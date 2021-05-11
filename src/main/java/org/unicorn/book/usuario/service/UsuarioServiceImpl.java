package org.unicorn.book.usuario.service;

import org.mapstruct.factory.Mappers;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.thymeleaf.util.StringUtils;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.usuario.dto.CompraDto;
import org.unicorn.book.usuario.dto.DetalleCompraDto;
import org.unicorn.book.usuario.dto.DireccionForm;
import org.unicorn.book.usuario.dto.TarjetaForm;
import org.unicorn.book.usuario.dto.UsuarioForm;
import org.unicorn.book.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.usuario.mapper.UsuarioMapper;
import org.unicorn.book.usuario.model.Compra;
import org.unicorn.book.usuario.model.DetalleCompra;
import org.unicorn.book.usuario.model.Direccion;
import org.unicorn.book.usuario.model.Rol;
import org.unicorn.book.usuario.model.Tarjeta;
import org.unicorn.book.usuario.model.TipoTarjeta;
import org.unicorn.book.usuario.model.Usuario;
import org.unicorn.book.usuario.repository.CompraRepository;
import org.unicorn.book.usuario.repository.ConsultaRepository;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;
import org.unicorn.book.usuario.repository.EncargoRepository;
import org.unicorn.book.usuario.repository.UsuarioRepository;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 *
 */
@Service
@Transactional(readOnly = true)
public class UsuarioServiceImpl implements UsuarioService {

    private static final UsuarioMapper MAPPER = Mappers.getMapper(UsuarioMapper.class);
    private static final String ANONYMOUS_FICTITIOUS_USER = "ffef234b-0d70-49a4-abb9";
    private final UsuarioRepository usuarioRepository;
    private final CompraRepository compraRepository;
    private final DetalleCompraRepository detalleCompraRepository;
    private final EncargoRepository encargoRepository;
    private final EntityManager entityManager;
    private final PasswordEncoder pass;
    private final ConsultaRepository consultaRepository;

    public UsuarioServiceImpl(UsuarioRepository usuarioRepository, CompraRepository compraRepository,
            DetalleCompraRepository detalleCompraRepository, EncargoRepository encargoRepository,
            EntityManager entityManager, PasswordEncoder pass, ConsultaRepository consultaRepository) {
        this.usuarioRepository = usuarioRepository;
        this.compraRepository = compraRepository;
        this.detalleCompraRepository = detalleCompraRepository;
        this.encargoRepository = encargoRepository;
        this.entityManager = entityManager;
        this.pass = pass;
        this.consultaRepository = consultaRepository;
    }

    @Override
    @Transactional
    public void altaUsuario(UsuarioForm usuarioForm) throws UsernameDuplicatedException, EmailDuplicatedException {
        this.checkValidUsername(usuarioForm.getUsuario());
        this.checkValidEmail(usuarioForm.getCorreo());

        Usuario usuario = MAPPER.toUsuario(usuarioForm);
        usuario.setPassword(pass.encode(usuarioForm.getContrasena()));
        List<Rol> roles = new ArrayList<>();
        roles.add(entityManager.getReference(Rol.class, 2L));
        usuario.setRoles(roles);
        usuarioRepository.saveAndFlush(usuario);

        AutenticacionUtils.login(usuario, usuario.getRoles());
    }

    @Override
    @Transactional
    public void bajaUsuario() {
        Usuario usuario = usuarioRepository.getOne(AutenticacionUtils.getIdUsuario());
        Usuario userAnonimo = usuarioRepository.findByUsuario(ANONYMOUS_FICTITIOUS_USER);
        if (ObjectUtils.isEmpty(userAnonimo)) {
            userAnonimo = usuarioRepository.saveAndFlush(this.crearUsuarioAnonimo());
        }

        compraRepository.updateUsuario(usuario, userAnonimo);
        encargoRepository.updateUsuario(usuario, userAnonimo);
        consultaRepository.updateUsuario(usuario, userAnonimo);
        usuarioRepository.delete(usuario);
    }

    @Override
    public UsuarioForm getFormularioUsuario() {
        Usuario usuario = usuarioRepository.getOne(AutenticacionUtils.getIdUsuario());
        return MAPPER.toUsuarioForm(usuario);
    }

    @Override
    @Transactional
    public UsuarioForm actualizarUsuario(UsuarioForm usuarioForm) {
        Usuario usuario = usuarioRepository.getOne(usuarioForm.getId());
        if (!StringUtils.isEmpty(usuarioForm.getContrasena()) && usuarioForm.getContrasena()
                .equals(usuarioForm.getRepetirContrasena())) {
            usuario.setPassword(pass.encode(usuarioForm.getContrasena()));
        }

        usuario.setNombre(usuarioForm.getNombre());
        usuario.setApellido1(usuarioForm.getApellido1());
        usuario.setApellido2(usuarioForm.getApellido2());
        usuario.setEmail(usuarioForm.getCorreo());
        usuario.setTelefono1(usuarioForm.getTelefono1());
        usuario.setTelefono2(usuarioForm.getTelefono2());
        usuario.setDni(usuarioForm.getDni());
        usuario.setFechaNacimiento(usuarioForm.getFechaNacimiento());
        usuario = usuarioRepository.save(usuario);

        // Se invoca al login para actualizar los datos del contexto
        AutenticacionUtils.login(usuario, usuario.getRoles());
        return this.getFormularioUsuario();
    }

    @Override
    public List<DireccionForm> getDirecciones() {
        List<Direccion> direccions = entityManager.find(Usuario.class, AutenticacionUtils.getIdUsuario())
                .getDirecciones();
        List<DireccionForm> direccionForms = new ArrayList<>();
        direccions.forEach(d -> {
            direccionForms.add(MAPPER.toDireccionForm(d));
        });
        return direccionForms;
    }

    @Override
    public DireccionForm getDireccionFormEdicion(Long id) {
        Direccion d = entityManager.find(Direccion.class, id);
        return MAPPER.toDireccionForm(d);
    }

    @Override
    @Transactional
    public void altaOActualizarDireccion(DireccionForm form) {
        Direccion direccion;
        if (form.getId() == null) {
            direccion = new Direccion();
            direccion.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));

        } else {
            direccion = entityManager.find(Direccion.class, form.getId());
        }
        direccion.setNombrePersonalizado(form.getNombrePersonalizado());
        direccion.setNombreReceptor(form.getNombre());
        direccion.setNombre1Receptor(form.getApellido1());
        direccion.setNombre2Receptor(form.getApellido2());
        direccion.setTextoDireccion(form.getDireccion());
        direccion.setPoblacion(form.getPoblacion());
        direccion.setProvincia(form.getProvincia());
        direccion.setPais(form.getPais());
        direccion.setCodigoPostal(form.getCodigoPostal());
        entityManager.persist(direccion);
    }

    @Override
    @Transactional
    public void eliminarDireccion(Long idDireccion) {
        entityManager.remove(entityManager.getReference(Direccion.class, idDireccion));
    }

    @Override
    public List<TarjetaForm> getTarjetas() {
        List<Tarjeta> Tarjetas = entityManager.find(Usuario.class, AutenticacionUtils.getIdUsuario()).getTarjetas();
        List<TarjetaForm> tarjetaForms = new ArrayList<>();
        Tarjetas.forEach(t -> {
            TarjetaForm form = MAPPER.toTarjetaForm(t);
            form.setNumero(form.getNumero().replaceAll("^([\\d]{4})([\\d]{4})([\\d]{4})([\\d]{4})", "$1 $2 $3 $4"));
            tarjetaForms.add(form);
        });
        return tarjetaForms;
    }

    @Override
    public TarjetaForm getTarjetaFormEdicion(Long id) {
        Tarjeta d = entityManager.find(Tarjeta.class, id);
        TarjetaForm form = MAPPER.toTarjetaForm(d);
        form.setNumero(form.getNumero().replaceAll("^([\\d]{4})([\\d]{4})([\\d]{4})([\\d]{4})", "$1 $2 $3 $4"));
        return form;
    }

    @Override
    @Transactional
    public void altaOActualizarTarjeta(TarjetaForm form) {
        Tarjeta tarjeta;
        if (form.getId() == null) {
            tarjeta = new Tarjeta();
            tarjeta.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
        } else {
            tarjeta = entityManager.find(Tarjeta.class, form.getId());
        }
        tarjeta.setNombrePersonalizado(form.getNombrePersonalizado());
        tarjeta.setNumero(Long.parseLong(form.getNumero().replaceAll(" ", "")));
        tarjeta.setMesCaducidad(Integer.parseInt(form.getMesCaducidad()));
        tarjeta.setAnoCaducidad(Integer.parseInt(form.getAnoCaducidad()));
        tarjeta.setTipoTarjeta(entityManager.getReference(TipoTarjeta.class, form.getTipoTarjeta()));
        tarjeta.setCvv(Integer.parseInt(form.getCvv()));
        entityManager.persist(tarjeta);
    }

    @Override
    @Transactional
    public void eliminarTarjeta(Long idTarjeta) {
        entityManager.remove(entityManager.getReference(Tarjeta.class, idTarjeta));
    }

    @Override
    public List<CompraDto> getPedidos() {
        List<CompraDto> compraDtos = new ArrayList<>();
        for (Compra compra : compraRepository.findAllByUsuarioId(AutenticacionUtils.getIdUsuario())) {
            CompraDto compraDto = new CompraDto();
            compraDto.setId(compra.getId());
            compraDto.setFechaCompra(compra.getFechaCompra());
            compraDto.setEstadoNombre(compra.getEstado().getNombre());
            compraDto.setEstadoId(compra.getEstado().getId());
            compraDto.setMetodoPago(null);
            if (compra.getDireccion() != null) {
                compraDto.setDireccionTextoDireccion(compra.getDireccion().getTextoDireccion());
            }
            compraDto.setFechaEntrega(compra.getFechaEntrega());
            List<DetalleCompraDto> detalle = new ArrayList<>();
            float costeCompra = 0;
            for (DetalleCompra detalleCompra : detalleCompraRepository.findAllByCompraId(compra.getId())) {
                DetalleCompraDto detalleCompraDto = new DetalleCompraDto();
                detalleCompraDto.setPrecio(detalleCompra.getLibro().getPrecio());
                detalleCompraDto.setIdLibro(detalleCompra.getLibro().getId());
                detalleCompraDto.setDescuento(detalleCompra.getPocentajeDescuento());
                detalleCompraDto.setNombreLibro(detalleCompra.getLibro().getTitulo());
                detalleCompraDto.setCantidad(detalleCompra.getCantidad());
                detalle.add(detalleCompraDto);
                costeCompra = costeCompra + detalleCompra.getLibro().getPrecio() * detalleCompra.getCantidad();
            }
            compraDto.setDetalleCompraDtoList(detalle);
            compraDto.setCosteCompra(costeCompra);
            compraDtos.add(compraDto);
        }
        return compraDtos;
    }

    /**
     * @param username
     * @throws UsernameDuplicatedException
     */
    private void checkValidUsername(String username) throws UsernameDuplicatedException {
        if (Boolean.TRUE.equals(usuarioRepository.existsByUsuario(username))) {
            throw new UsernameDuplicatedException("El nombre de usuario ya existe");
        }
    }

    /**
     * @param email
     * @throws EmailDuplicatedException
     */
    private void checkValidEmail(String email) throws EmailDuplicatedException {
        if (Boolean.TRUE.equals(usuarioRepository.existsByEmail(email))) {
            throw new EmailDuplicatedException("El correo electrónico ya existe");
        }
    }

    private Usuario crearUsuarioAnonimo() {
        Usuario userAnonimo = new Usuario();
        userAnonimo.setUsuario(ANONYMOUS_FICTITIOUS_USER);
        userAnonimo.setPassword(pass.encode(UUID.randomUUID().toString()));
        userAnonimo.setEmail(ANONYMOUS_FICTITIOUS_USER);
        return userAnonimo;
    }
}

package org.unicorn.book.app.usuario.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.dto.DireccionForm;
import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.app.usuario.model.Direccion;
import org.unicorn.book.app.usuario.model.Rol;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.DireccionRepository;
import org.unicorn.book.app.usuario.repository.UsuarioRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

/**
 *
 */
@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UsuarioService {

    private final UsuarioRepository usuarioRepository;
    private final DireccionRepository direccionRepository;
    private final EntityManager entityManager;
    private final PasswordEncoder pass;

    public UserServiceImpl(UsuarioRepository usuarioRepository, DireccionRepository direccionRepository,
            EntityManager entityManager, PasswordEncoder pass) {
        this.usuarioRepository = usuarioRepository;
        this.direccionRepository = direccionRepository;
        this.entityManager = entityManager;
        this.pass = pass;
    }

    @Override
    @Transactional
    public void altaUsuario(UsuarioForm usuarioForm) throws UsernameDuplicatedException, EmailDuplicatedException {
        this.checkValidUsername(usuarioForm.getUsuario());
        this.checkValidEmail(usuarioForm.getCorreo());

        Usuario usuario = new Usuario();
        usuario.setNombre(usuarioForm.getNombre());
        usuario.setApellido1(usuarioForm.getApellido1());
        usuario.setApellido2(usuarioForm.getApellido2());
        usuario.setEmail(usuarioForm.getCorreo());
        usuario.setUsuario(usuarioForm.getUsuario());
        usuario.setPassword(pass.encode(usuarioForm.getContrasena()));
        List<Rol> roles = new ArrayList<>();
        roles.add(entityManager.getReference(Rol.class, 3L));
        usuario.setRoles(roles);
        usuarioRepository.saveAndFlush(usuario);

        AuthenticationUtils.login(usuario.getUsuario(), usuario.getRoles());
    }

    @Override
    public void bajaUsuario() {
        // TODO Eliminar usuario y todas las relaciones
    }

    @Override
    public UsuarioForm getFormularioUsuario() {
        Usuario usuario = usuarioRepository.getOne(AuthenticationUtils.getIdUsuario());
        UsuarioForm form = new UsuarioForm();
        form.setUsuario(usuario.getUsuario());
        form.setNombre(usuario.getNombre());
        form.setApellido1(usuario.getApellido1());
        form.setApellido2(usuario.getApellido2());
        form.setDni(usuario.getDni());
        form.setCorreo(usuario.getEmail());
        form.setFechaNacimiento(usuario.getFechaNacimiento());
        form.setTelefono1(usuario.getTelefono1());
        form.setTelefono2(usuario.getTelefono2());
        return form;
    }

    @Override
    @Transactional
    public UsuarioForm actualizarUsuario(UsuarioForm usuarioForm) {
        Usuario usuario = usuarioRepository.getOne(AuthenticationUtils.getIdUsuario());

        if (usuarioForm.getContrasena() != usuarioForm.getRepetirContrasena() || pass
                .encode(usuarioForm.getContrasena()).equals(usuario.getPassword())) {
            // lanzar excepcion
        }

        usuario.setNombre(usuarioForm.getNombre());
        usuario.setApellido1(usuarioForm.getApellido1());
        usuario.setApellido2(usuarioForm.getApellido2());
        usuario.setEmail(usuarioForm.getCorreo());
        usuario.setTelefono1(usuarioForm.getTelefono1());
        usuario.setTelefono2(usuarioForm.getTelefono2());
        usuario.setDni(usuarioForm.getDni());
        usuarioRepository.save(usuario);
        return this.getFormularioUsuario();
    }

    @Override
    public List<DireccionForm> getDirecciones() {
        List<Direccion> direccions = entityManager.find(Usuario.class, AuthenticationUtils.getIdUsuario())
                .getDirecciones();
        List<DireccionForm> direccionForms = new ArrayList<>();
        direccions.forEach(d -> {
            DireccionForm f = new DireccionForm();
            f.setId(d.getId());
            f.setNombrePersonalizado(d.getNombrePersonalizado());
            f.setNombre(d.getNombreReceptor());
            f.setApellido1(d.getNombre1Receptor());
            f.setApellido2(d.getNombre2Receptor());
            f.setProvincia(d.getProvincia());
            f.setPoblacion(d.getPoblacion());
            f.setCodigoPostal(d.getCodigoPostal());
            f.setPais(d.getPais());
            f.setDireccion(d.getTextoDireccion());
            direccionForms.add(f);
        });
        return direccionForms;
    }

    @Override
    public DireccionForm getDireccionFormEdicion(Long id) {
        Direccion d = entityManager.find(Direccion.class, id);
        DireccionForm f = new DireccionForm();
        f.setId(d.getId());
        f.setNombrePersonalizado(d.getNombrePersonalizado());
        f.setNombre(d.getNombreReceptor());
        f.setApellido1(d.getNombre1Receptor());
        f.setApellido2(d.getNombre2Receptor());
        f.setProvincia(d.getProvincia());
        f.setPoblacion(d.getPoblacion());
        f.setCodigoPostal(d.getCodigoPostal());
        f.setPais(d.getPais());
        f.setDireccion(d.getTextoDireccion());
        return f;
    }

    @Override
    @Transactional
    public void altaOActualizarDireccion(DireccionForm form) {
        Direccion direccion;
        if (form.getId() == null) {
            direccion = new Direccion();
            direccion.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));

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
     *
     * @param email
     * @throws EmailDuplicatedException
     */
    private void checkValidEmail(String email) throws EmailDuplicatedException {
        if (Boolean.TRUE.equals(usuarioRepository.existsByEmail(email))) {
            throw new EmailDuplicatedException("El correo electrónico ya existe");
        }
    }
}

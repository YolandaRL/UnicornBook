package org.unicorn.book.usuario.service;

import org.mapstruct.factory.Mappers;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.aplicacion.enums.ComponenteEnum;
import org.unicorn.book.aplicacion.model.Estado;
import org.unicorn.book.aplicacion.respository.EstadoRepository;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.libreria.repository.LibroRepository;
import org.unicorn.book.usuario.dto.ConsultaForm;
import org.unicorn.book.usuario.dto.ConsultaView;
import org.unicorn.book.usuario.dto.EncargoForm;
import org.unicorn.book.usuario.dto.EncargoView;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.exception.LibroConStockException;
import org.unicorn.book.usuario.mapper.ContactoMapper;
import org.unicorn.book.usuario.model.Consulta;
import org.unicorn.book.usuario.model.Encargo;
import org.unicorn.book.usuario.model.TipoEntrega;
import org.unicorn.book.usuario.model.TipoOperacion;
import org.unicorn.book.usuario.model.Usuario;
import org.unicorn.book.usuario.repository.ConsultaRepository;
import org.unicorn.book.usuario.repository.EncargoRepository;
import org.unicorn.book.usuario.repository.TipoEntregaRepository;
import org.unicorn.book.usuario.repository.TipoOperacionRepository;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class ContactoServiceImpl implements ContactoService {

    private final ContactoMapper MAPPER_INSTANCE = Mappers.getMapper(ContactoMapper.class);

    private final TipoOperacionRepository tipoOperacionRepository;
    private final TipoEntregaRepository tipoEntregaRepository;
    private final ConsultaRepository consultaRepository;
    private final EncargoRepository encargoRepository;
    private final LibroRepository libroRepository;
    private final EntityManager entityManager;
    private final EstadoRepository estadoRepository;

    public ContactoServiceImpl(TipoOperacionRepository tipoOperacionRepository,
            TipoEntregaRepository tipoEntregaRepository, ConsultaRepository consultaRepository,
            EncargoRepository encargoRepository, LibroRepository libroRepository, EntityManager entityManager,
            EstadoRepository estadoRepository) {
        this.tipoOperacionRepository = tipoOperacionRepository;
        this.tipoEntregaRepository = tipoEntregaRepository;
        this.consultaRepository = consultaRepository;
        this.encargoRepository = encargoRepository;
        this.libroRepository = libroRepository;
        this.entityManager = entityManager;
        this.estadoRepository = estadoRepository;
    }

    @Override
    public List<TablaMaestraView> getTiposOperacion() {
        return tipoOperacionRepository.findAllByOrderByIdAsc();
    }

    @Override
    public List<TablaMaestraView> getTiposEntraga() {
        return tipoEntregaRepository.findAllByOrderByIdAsc();
    }

    @Override
    public List<EncargoView> getEncargos() {
        return encargoRepository.findAllByUsuarioIdOrderByHoraEncargoAsc(AutenticacionUtils.getIdUsuario());
    }

    @Override
    public List<ConsultaView> getConsultas() {
        return consultaRepository.findAllByUsuarioIdOrderByFechaConsultaAsc(AutenticacionUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public EncargoForm nuevoEncargo(EncargoForm encargoForm) throws LibroConStockException {
        Long libroView = libroRepository.libroConStockByIsbn(encargoForm.getIsbn());

        if (libroView != null) {
            throw new LibroConStockException("Imposible realizar encargo, hay stock para el libro");
        }

        Encargo encargo = MAPPER_INSTANCE.toEncargo(encargoForm);
        Date date = new Date();
        encargo.setHoraEncargo(date);
        encargo.setFechaFin(new Date(date.getTime() + 2592000000L));
        encargo.setTipoEntrega(entityManager.getReference(TipoEntrega.class, encargoForm.getTipoEntragaId()));
        encargo.setTipoOperacion(entityManager
                .getReference(TipoOperacion.class, org.unicorn.book.usuario.dto.TipoOperacion.ENCARGO.getId()));
        if (AutenticacionUtils.getIdUsuario() != null) {
            encargo.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
        }
        encargo.setEstado(estadoRepository.findTopByComponenteId(ComponenteEnum.ENCARGO.getId()));
        encargoRepository.save(encargo);
        return encargoForm;
    }

    @Override
    @Transactional
    public ConsultaForm nuevaConsulta(ConsultaForm consultaForm) {
        Consulta consulta = MAPPER_INSTANCE.toConsulta(consultaForm);
        Date date = new Date();
        consulta.setFechaConsulta(date);
        consulta.setHoraConsulta(date);
        consulta.setFechaFin(new Date(date.getTime() + 2592000000L));
        consulta.setTipoOperacion(entityManager
                .getReference(TipoOperacion.class, org.unicorn.book.usuario.dto.TipoOperacion.CONSULTA.getId()));
        if (AutenticacionUtils.getIdUsuario() != null) {
            consulta.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
        }
        Estado es = estadoRepository.findTopByComponenteId(ComponenteEnum.CONSULTA.getId());
        consulta.setEstado(es);
        consultaRepository.save(consulta);
        return consultaForm;
    }
}

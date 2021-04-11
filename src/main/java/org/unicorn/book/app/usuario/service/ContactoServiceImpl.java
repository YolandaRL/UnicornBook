package org.unicorn.book.app.usuario.service;

import org.mapstruct.factory.Mappers;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.ContactoMapper;
import org.unicorn.book.app.usuario.dto.ConsultaForm;
import org.unicorn.book.app.usuario.dto.ConsultaView;
import org.unicorn.book.app.usuario.dto.EncargoForm;
import org.unicorn.book.app.usuario.dto.EncargoView;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;
import org.unicorn.book.app.usuario.model.Consulta;
import org.unicorn.book.app.usuario.model.Encargo;
import org.unicorn.book.app.usuario.model.TipoEntrega;
import org.unicorn.book.app.usuario.model.TipoOperacion;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.ConsultaRepository;
import org.unicorn.book.app.usuario.repository.EncargoRepository;
import org.unicorn.book.app.usuario.repository.TipoEntregaRepository;
import org.unicorn.book.app.usuario.repository.TipoOperacionRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

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
    private final EntityManager entityManager;

    public ContactoServiceImpl(TipoOperacionRepository tipoOperacionRepository,
            TipoEntregaRepository tipoEntregaRepository, ConsultaRepository consultaRepository,
            EncargoRepository encargoRepository, EntityManager entityManager) {
        this.tipoOperacionRepository = tipoOperacionRepository;
        this.tipoEntregaRepository = tipoEntregaRepository;
        this.consultaRepository = consultaRepository;
        this.encargoRepository = encargoRepository;
        this.entityManager = entityManager;
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
        return encargoRepository.findAllByUsuarioIdOrderByHoraEncargoAsc(AuthenticationUtils.getIdUsuario());
    }

    @Override
    public List<ConsultaView> getConsultas() {
        return consultaRepository.findAllByUsuarioIdOrderByFechaConsultaAsc(AuthenticationUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public EncargoForm nuevoEncargo(EncargoForm encargoForm) {
        Encargo encargo = MAPPER_INSTANCE.toEncargo(encargoForm);
        Date date = new Date();
        encargo.setHoraEncargo(date);
        encargo.setFechaFin(new Date(date.getTime() + 2592000000L));
        encargo.setTipoEntrega(entityManager.getReference(TipoEntrega.class, encargoForm.getTipoEntragaId()));
        encargo.setTipoOperacion(entityManager
                .getReference(TipoOperacion.class, org.unicorn.book.app.usuario.dto.TipoOperacion.ENCARGO.getId()));
        encargo.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));
        //fixme encargo.setEstado("");
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
                .getReference(TipoOperacion.class, org.unicorn.book.app.usuario.dto.TipoOperacion.CONSULTA.getId()));
        consulta.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));
        // FIXME consulta.setEstado();
        consultaRepository.save(consulta);
        return consultaForm;
    }
}

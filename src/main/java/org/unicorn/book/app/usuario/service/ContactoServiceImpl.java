package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.dto.ConsultaForm;
import org.unicorn.book.app.usuario.dto.ConsultaView;
import org.unicorn.book.app.usuario.dto.EncargoForm;
import org.unicorn.book.app.usuario.dto.EncargoView;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;
import org.unicorn.book.app.usuario.repository.ConsultaRepository;
import org.unicorn.book.app.usuario.repository.EncargoRepository;
import org.unicorn.book.app.usuario.repository.TipoEntregaRepository;
import org.unicorn.book.app.usuario.repository.TipoOperacionRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.persistence.EntityManager;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class ContactoServiceImpl implements ContactoService {

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
        return encargoRepository.findAllByUsuarioIdOrderByFechaConsultaAsc(AuthenticationUtils.getIdUsuario());
    }

    @Override
    public List<ConsultaView> getConsultas() {
        return consultaRepository.findAllByUsuarioIdOrderByFechaConsultaAsc(AuthenticationUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public EncargoForm nuevoEncargo(EncargoForm encargoForm) {
        return null;
    }

    @Override
    @Transactional
    public ConsultaForm nuevaConsulta(ConsultaForm consultaForm) {
        return null;
    }
}

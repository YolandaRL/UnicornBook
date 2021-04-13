package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.dto.CestaView;
import org.unicorn.book.app.usuario.repository.CestaRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.persistence.EntityManager;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class CestaServiceImpl implements CestaService {

    private final CestaRepository cestaRepository;
    private final EntityManager entityManager;

    public CestaServiceImpl(CestaRepository cestaRepository, EntityManager entityManager) {
        this.cestaRepository = cestaRepository;
        this.entityManager = entityManager;
    }

    @Override
    public List<CestaView> getCarritoCompra() {
        List<CestaView> d = cestaRepository.findAllByUsuarioId(AuthenticationUtils.getIdUsuario());
        return d;
    }

    @Override
    public CestaView addLibroCarritoCompra(Long idLibro, Integer cantidad) {
        return null;
    }
}

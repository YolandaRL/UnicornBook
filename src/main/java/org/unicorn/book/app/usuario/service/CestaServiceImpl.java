package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.usuario.dto.CestaView;
import org.unicorn.book.app.usuario.model.Cesta;
import org.unicorn.book.app.usuario.model.CestaPk;
import org.unicorn.book.app.usuario.model.Usuario;
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
    public Integer countCarrito() {
        List<CestaView> carrito = this.getCarritoCompra();
        return carrito.stream().map(CestaView::getCantidad).reduce(0, Integer::sum);
    }

    @Override
    public List<CestaView> getCarritoCompra() {
        return cestaRepository.findAllByUsuarioId(AuthenticationUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public List<CestaView> addLibroCarritoCompra(Long idLibro, Integer cantidad) {
        CestaPk pk = new CestaPk();
        pk.setIdUsuario(AuthenticationUtils.getIdUsuario());
        pk.setIdLibro(idLibro);
        Cesta cesta = entityManager.find(Cesta.class, pk);

        if (cesta == null) {
            cesta = new Cesta();
            cesta.setLibro(entityManager.getReference(Libro.class, idLibro));
            cesta.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));
            cesta.setPk(pk);
            cesta.setCantidad(cantidad==null || cantidad==0 ? 1 : cantidad);
        } else {
            cesta.setCantidad(cantidad==null || cantidad==0 ? cesta.getCantidad() + 1 : cesta.getCantidad() + cantidad);
        }
        cestaRepository.save(cesta);
        return this.getCarritoCompra();
    }
}

package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.enums.ComponenteEnum;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.respository.EstadoRepository;
import org.unicorn.book.app.usuario.dto.CestaView;
import org.unicorn.book.app.usuario.dto.CompraForm;
import org.unicorn.book.app.usuario.model.Cesta;
import org.unicorn.book.app.usuario.model.CestaPk;
import org.unicorn.book.app.usuario.model.Compra;
import org.unicorn.book.app.usuario.model.DetalleCompra;
import org.unicorn.book.app.usuario.model.DetalleCompraPk;
import org.unicorn.book.app.usuario.model.Direccion;
import org.unicorn.book.app.usuario.model.Tarjeta;
import org.unicorn.book.app.usuario.model.TipoEntrega;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.CestaRepository;
import org.unicorn.book.app.usuario.repository.CompraRepository;
import org.unicorn.book.app.usuario.repository.DetalleCompraRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class CestaServiceImpl implements CestaService {

    private final CestaRepository cestaRepository;
    private final CompraRepository compraRepository;
    private final DetalleCompraRepository detalleCompraRepository;
    private final EstadoRepository estadoRepository;
    private final EntityManager entityManager;

    public CestaServiceImpl(CestaRepository cestaRepository, CompraRepository compraRepository,
            DetalleCompraRepository detalleCompraRepository, EstadoRepository estadoRepository,
            EntityManager entityManager) {
        this.cestaRepository = cestaRepository;
        this.compraRepository = compraRepository;
        this.detalleCompraRepository = detalleCompraRepository;
        this.estadoRepository = estadoRepository;
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
            cesta.setCantidad(cantidad==null || cantidad==0 ? 1 : cantidad);
        }
        cestaRepository.save(cesta);
        return this.getCarritoCompra();
    }

    @Override
    @Transactional
    public void eliminarLibro(Long idLibro) {
        CestaPk pk = new CestaPk();
        pk.setIdUsuario(AuthenticationUtils.getIdUsuario());
        pk.setIdLibro(idLibro);
        cestaRepository.delete(entityManager.find(Cesta.class, pk));

    }

    @Override
    @Transactional
    public void vaciarCesta() {
        cestaRepository.deleteAllByUsuarioId(AuthenticationUtils.getIdUsuario());

    }

    @Override
    @Transactional
    public void confirmarPedido(CompraForm form) {
        List<Cesta> cesta = cestaRepository.findAllByUsuarioIdAndCantidadIsNotNull(AuthenticationUtils.getIdUsuario());

        Compra compra = new Compra();
        compra.setFechaCompra(new Date());
        compra.setMetodoPago(1.0); //FIXME
        compra.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));
        compra.setEstado(estadoRepository.findTopByComponenteId(ComponenteEnum.COMPRA.getId()));
        compra.setTipoEntrega(entityManager.getReference(TipoEntrega.class, 1L)); // FIXME
        compra.setDireccion(entityManager.getReference(Direccion.class, form.getIdDireccion()));
        compra.setTarjeta(entityManager.getReference(Tarjeta.class, form.getIdTarjeta()));
        compra = compraRepository.saveAndFlush(compra);

        for (Cesta c : cesta) {
            DetalleCompraPk pk = new DetalleCompraPk();
            pk.setIdLibro(c.getLibro().getId());
            pk.setIdCompra(compra.getId());
            DetalleCompra dc = new DetalleCompra();
            dc.setPk(pk);
            dc.setLibro(c.getLibro());
            dc.setCompra(compra);
            dc.setCantidad(c.getCantidad());

            Libro libro = c.getLibro();
            libro.setStock(libro.getStock() - c.getCantidad());
            entityManager.persist(libro);
            detalleCompraRepository.save(dc);
        }
        cestaRepository.deleteAll(cesta);
    }
}

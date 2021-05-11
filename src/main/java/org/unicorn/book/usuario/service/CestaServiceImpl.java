package org.unicorn.book.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.aplicacion.enums.ComponenteEnum;
import org.unicorn.book.aplicacion.respository.EstadoRepository;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.usuario.dto.CestaView;
import org.unicorn.book.usuario.dto.CompraForm;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.model.Cesta;
import org.unicorn.book.usuario.model.CestaPk;
import org.unicorn.book.usuario.model.Compra;
import org.unicorn.book.usuario.model.DetalleCompra;
import org.unicorn.book.usuario.model.DetalleCompraPk;
import org.unicorn.book.usuario.model.Direccion;
import org.unicorn.book.usuario.model.Tarjeta;
import org.unicorn.book.usuario.model.TipoEntrega;
import org.unicorn.book.usuario.model.Usuario;
import org.unicorn.book.usuario.repository.CestaRepository;
import org.unicorn.book.usuario.repository.CompraRepository;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;
import org.unicorn.book.usuario.repository.TipoEntregaRepository;
import org.unicorn.book.usuario.repository.TipoTarjetaRepository;

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
    private final TipoTarjetaRepository tipoTarjetaRepository;
    private final TipoEntregaRepository tipoEntregaRepository;
    private final EntityManager entityManager;

    public CestaServiceImpl(CestaRepository cestaRepository, CompraRepository compraRepository,
            DetalleCompraRepository detalleCompraRepository, EstadoRepository estadoRepository,
            TipoTarjetaRepository tipoTarjetaRepository, TipoEntregaRepository tipoEntregaRepository,
            EntityManager entityManager) {
        this.cestaRepository = cestaRepository;
        this.compraRepository = compraRepository;
        this.detalleCompraRepository = detalleCompraRepository;
        this.estadoRepository = estadoRepository;
        this.tipoTarjetaRepository = tipoTarjetaRepository;
        this.tipoEntregaRepository = tipoEntregaRepository;
        this.entityManager = entityManager;
    }

    @Override
    public Integer countCarrito() {
        List<CestaView> carrito = this.getCarritoCompra();
        return carrito.stream().map(CestaView::getCantidad).reduce(0, Integer::sum);
    }

    @Override
    public List<CestaView> getCarritoCompra() {
        return cestaRepository.findAllByUsuarioId(AutenticacionUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public List<CestaView> addLibroCarritoCompra(Long idLibro, Integer cantidad) {
        CestaPk pk = new CestaPk();
        pk.setIdUsuario(AutenticacionUtils.getIdUsuario());
        pk.setIdLibro(idLibro);
        Cesta cesta = entityManager.find(Cesta.class, pk);

        if (cesta == null) {
            cesta = new Cesta();
            cesta.setLibro(entityManager.getReference(Libro.class, idLibro));
            cesta.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
            cesta.setPk(pk);
            cesta.setCantidad(cantidad == null || cantidad == 0 ? 1 : cantidad);
        } else {
            cesta.setCantidad(cantidad == null || cantidad == 0 ? 1 : cantidad);
        }
        cestaRepository.save(cesta);
        return this.getCarritoCompra();
    }

    @Override
    @Transactional
    public void eliminarLibro(Long idLibro) {
        CestaPk pk = new CestaPk();
        pk.setIdUsuario(AutenticacionUtils.getIdUsuario());
        pk.setIdLibro(idLibro);
        cestaRepository.delete(entityManager.find(Cesta.class, pk));

    }

    @Override
    @Transactional
    public void vaciarCesta() {
        cestaRepository.deleteAllByUsuarioId(AutenticacionUtils.getIdUsuario());

    }

    @Override
    @Transactional
    public void confirmarPedido(CompraForm form) {
        List<Cesta> cesta = cestaRepository.findAllByUsuarioIdAndCantidadIsNotNull(AutenticacionUtils.getIdUsuario());

        Compra compra = new Compra();
        compra.setFechaCompra(new Date());
        compra.setFechaEntrega(new Date(new Date().getTime() + 60000 * 24 * 15));
        compra.setMetodoPago(1.0); //FIXME
        compra.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
        compra.setEstado(estadoRepository.findTopByComponenteId(ComponenteEnum.COMPRA.getId()));
        compra.setTipoEntrega(entityManager.getReference(TipoEntrega.class, form.getIdTipoEntrega()));
        if (form.getIdTipoEntrega().equals(2L)) {
            compra.setDireccion(entityManager.getReference(Direccion.class, form.getIdDireccion()));
        }
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

    @Override
    public List<TablaMaestraView> getTiposTarjeta() {
        return tipoTarjetaRepository.findAllByOrderByIdAsc();
    }

    @Override
    public List<TablaMaestraView> getTiposEntrega() {
        return tipoEntregaRepository.findAllByOrderByIdAsc();
    }
}

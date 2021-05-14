package org.unicorn.book.superusuario.service;

import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.libreria.model.Autor;
import org.unicorn.book.libreria.model.Coleccion;
import org.unicorn.book.libreria.model.Editorial;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.libreria.model.Tematica;
import org.unicorn.book.libreria.repository.LibroRepository;
import org.unicorn.book.superusuario.dto.ProductoForm;
import org.unicorn.book.superusuario.exception.ISBNDuplicadoException;
import org.unicorn.book.superusuario.exception.ProductoAsociadoCarritoException;
import org.unicorn.book.superusuario.exception.ProductoAsociadoCompraException;
import org.unicorn.book.superusuario.mapper.ProductoMapper;
import org.unicorn.book.usuario.repository.CestaRepository;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import javax.persistence.EntityManager;
import javax.xml.bind.DatatypeConverter;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

/**
 * Implementa las operaciones disponibles que tiene el administrador sobre productos
 */
@Service
@Transactional(readOnly = true)
public class ProductosServiceImpl implements ProductosService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ProductosServiceImpl.class);
    private static final ProductoMapper MAPPER = Mappers.getMapper(ProductoMapper.class);

    private final LibroRepository libroRepository;
    private final DetalleCompraRepository detalleCompraRepository;
    private final CestaRepository cestaRepository;
    private final EntityManager entityManager;

    /**
     * @param libroRepository         el repositorio de libros {@link LibroRepository}
     * @param detalleCompraRepository el repositorio del detalle de una compra {@link DetalleCompraRepository}
     * @param cestaRepository         el repositorio del carrito de la compra {@link CestaRepository}
     * @param entityManager           el manejador generico de entidades {@link EntityManager}
     */
    public ProductosServiceImpl(LibroRepository libroRepository, DetalleCompraRepository detalleCompraRepository,
            CestaRepository cestaRepository, EntityManager entityManager) {
        this.libroRepository = libroRepository;
        this.detalleCompraRepository = detalleCompraRepository;
        this.cestaRepository = cestaRepository;
        this.entityManager = entityManager;
    }

    @Override
    public ProductoForm getFormularioEdicion(Long idProducto) {
        if (ObjectUtils.isEmpty(idProducto)) {
            return new ProductoForm();
        }
        return MAPPER.toProductoForm(entityManager.find(Libro.class, idProducto));
    }

    @Override
    @Transactional
    public ProductoForm saveUpdateLibro(ProductoForm form) throws ISBNDuplicadoException {

        Libro libro;
        if (ObjectUtils.isEmpty(form.getId())) {
            this.checkIsbNuevoLibro(form.getIsbn());
            libro = new Libro();
        } else {
            libro = entityManager.find(Libro.class, form.getId());
            if (!form.getIsbn().equals(libro.getIsbn())) {
                this.checkIsbNuevoLibro(form.getIsbn());
            }
            libro.setFechaEdicion(new Date());
        }
        MAPPER.updateLibro(libro, form);
        libro.setAutor(entityManager.getReference(Autor.class, form.getAutor()));
        libro.setColeccion(entityManager.getReference(Coleccion.class, form.getColeccion()));
        libro.setEditorial(entityManager.getReference(Editorial.class, form.getEditorial()));
        if (libro.getTematicas() == null) {
            libro.setTematicas(new ArrayList<>());
        } else {
            libro.getTematicas().clear();
        }
        libro.getTematicas().clear();
        if (form.getTematicas() != null) {
            for (Long tematica : form.getTematicas()) {
                libro.getTematicas().add(entityManager.getReference(Tematica.class, tematica));
            }
        }
        this.saveUpdatePortada(libro, form);
        libro = libroRepository.saveAndFlush(libro);
        return MAPPER.toProductoForm(libro);
    }

    @Override
    @Transactional
    public void eliminarLibro(Long idProducto)
            throws ProductoAsociadoCarritoException, ProductoAsociadoCompraException {
        this.checkLibroBorrable(idProducto);
        Libro libro = libroRepository.getOne(idProducto);
        libroRepository.delete(libro);
    }

    @Override
    public void cargarPrevisualizacionPortada(ProductoForm form) {
        if (!form.getPortada().isEmpty() || (!ObjectUtils.isEmpty(form.getLinkPortada()) && form.getLinkPortada()
                .startsWith("data:image"))) {
            try {
                BASE64Encoder base64Encoder = new BASE64Encoder();

                BufferedImage photo = ImageIO.read(new ByteArrayInputStream(form.getPortada().getBytes()));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();

                ImageIO.write(photo, "gif", byteArrayOutputStream);
                form.setLinkPortada(
                        "data:image/gif;base64," + base64Encoder.encode(byteArrayOutputStream.toByteArray()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * @param libro
     * @param form
     */
    private void saveUpdatePortada(Libro libro, ProductoForm form) {
        String originalPortada = libro.getLinkPortada();
        if (!form.getPortada().isEmpty()) {
            String uuid = UUID.randomUUID().toString();
            String fileName = uuid + ".gif";
            libro.setLinkPortada(fileName);
            Path filepath = Paths
                    .get(String.format("%s/portadas/%s/", System.getProperty("app_resources_path"), fileName));

            try (OutputStream os = Files.newOutputStream(filepath)) {
                os.write(form.getPortada().getBytes());
                os.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (!ObjectUtils.isEmpty(originalPortada)) {
                Path fileToDeletePath = Paths.get(String
                        .format("%s/portadas/%s", System.getProperty("app_resources_path"), originalPortada));
                try {
                    Files.delete(fileToDeletePath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        if (!ObjectUtils.isEmpty(form.getLinkPortada()) && form.getLinkPortada().startsWith("data:image")) {
            String uuid = UUID.randomUUID().toString();
            String fileName = uuid + ".gif";
            libro.setLinkPortada(fileName);
            Path filepath = Paths
                    .get(String.format("%s/portadas/%s/", System.getProperty("app_resources_path"), fileName));

            try (OutputStream os = Files.newOutputStream(filepath)) {
                os.write(DatatypeConverter.parseBase64Binary(form.getLinkPortada().split(",")[1]));
                os.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (!ObjectUtils.isEmpty(originalPortada)) {
                Path fileToDeletePath = Paths.get(String
                        .format("%s/portadas/%s", System.getProperty("app_resources_path"), originalPortada));
                try {
                    Files.delete(fileToDeletePath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * valida que el libro que se intenta guardar no exista ya en la BDD. La validación se hace a través del ISBN
     *
     * @param isbn el ISBN con el cual validar que no exista {@link Long}
     * @throws ISBNDuplicadoException error validando
     */
    private void checkIsbNuevoLibro(String isbn) throws ISBNDuplicadoException {
        Libro libro = libroRepository.getByIsbn(isbn);
        if (!ObjectUtils.isEmpty(libro)) {
            throw new ISBNDuplicadoException("Ya existe un libro con el ISBN indicado");
        }
    }

    /**
     * Valida que el libro que se está intentando eliminar no esté asociado a una compra o en un carro de la cesta
     *
     * @param idLibro el ID interno del libro {@link Long}
     * @throws ProductoAsociadoCompraException  error al eliminar el libro
     * @throws ProductoAsociadoCarritoException error al eliminar el libro
     */
    private void checkLibroBorrable(Long idLibro)
            throws ProductoAsociadoCompraException, ProductoAsociadoCarritoException {
        Integer compras = detalleCompraRepository.countByLibroId(idLibro);
        Integer cestas = cestaRepository.countByLibroId(idLibro);
        if (!ObjectUtils.isEmpty(compras) && compras > 0) {
            throw new ProductoAsociadoCompraException(
                    "Hay compras registradas con este libro. No es posible eliminarlo");
        }

        if (!ObjectUtils.isEmpty(cestas) && cestas > 0) {
            throw new ProductoAsociadoCarritoException(
                    "Hay cestas de la compra con este libro. No es posible eliminarlo");
        }
    }
}

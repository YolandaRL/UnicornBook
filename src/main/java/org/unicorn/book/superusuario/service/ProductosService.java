package org.unicorn.book.superusuario.service;

import org.unicorn.book.superusuario.dto.ProductoForm;

/**
 * Define las operaciones disponibles que tiene el administrador sobre productos
 */
public interface ProductosService {

    /**
     * Obtiene el formulario de edición de un libro a partir de un ID
     *
     * @param idProducto el ID del producto {@link Long}
     * @return el formulario del producto {@link ProductoForm}
     */
    ProductoForm getFormularioEdicion(Long idProducto);

    /**
     * Actualiza los datos de un libro en base de datos
     *
     * @param form el formulario con los cambios a persistir {@link ProductoForm}
     * @return el formulario del producto actualizado {@link ProductoForm}
     */
    ProductoForm saveUpdateLibro(ProductoForm form);

    /**
     * Hace un borrado lógico de un libro en la base de datos. De esta forma las referencias en compras antiguas nos e perderán
     *
     * @param idProducto el ID del libro {@link Long}
     */
    void eliminarLibro(Long idProducto);
}

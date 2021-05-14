package org.unicorn.book.aplicacion.service;

import org.unicorn.book.aplicacion.dto.ImagenForm;

/**
 * Define las operaciones disponibles con imagenes
 */
public interface ImagenService {

    /**
     * A partir de los bytes de un multipartfile se crea una cadena codificada en base 64
     * para que cuando haya errores en un formulario pueda devolverse este con los errores
     * y se pueda seguir mostrando la imagen cargada por el usuario
     *
     * @param imagenForm el formulario de una imagen {@link ImagenForm}
     */
    void cargarDataBase64(ImagenForm imagenForm);

    /**
     * Guarda un nuevo archivo y elimina el antigo
     *
     * @param imagenForm el formuarlio de una imagen {@link ImagenForm}
     * @return el nombre del fichero guardado {@link String}
     */
    String saveOrUpdateImagen(ImagenForm imagenForm);

    /**
     * Elimina un fichero del directorio local de recursos
     *
     * @param fileName el nombre del fichero a eliminar {@link String}
     */
    void deleteImagen(String fileName);
}

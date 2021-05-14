package org.unicorn.book.aplicacion.dto;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

public class ImagenForm implements Serializable {

    private static final long serialVersionUID = 7349637657312344498L;

    private String nombre;
    private String extension;
    private transient MultipartFile imagen;
    private String dataBase64;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public MultipartFile getImagen() {
        return imagen;
    }

    public void setImagen(MultipartFile imagen) {
        this.imagen = imagen;
    }

    public String getDataBase64() {
        return dataBase64;
    }

    public void setDataBase64(String dataBase64) {
        this.dataBase64 = dataBase64;
    }
}

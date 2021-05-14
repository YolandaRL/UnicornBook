package org.unicorn.book.superusuario.dto;

import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductoForm implements Serializable {
    private static final long serialVersionUID = 5570741305754421682L;

    private Long id;
    @NotEmpty
    private String isbn;
    @NotEmpty
    private String titulo;
    private String subtitulo;
    @NotEmpty
    private String sinopsis;
    private Integer paginas;
    private String formato;
    private Date fechaPublicacion;
    private Date fechaEdicion;
    @NotNull
    private Date fechaDisponible;
    private boolean visible;
    private String idioma;
    private String notas;
    @NotNull
    private Integer stock;
    @NotNull
    private Float precio;
    private String linkPortada;
    private transient MultipartFile portada;
    @NotNull
    private Long editorial;
    @NotNull
    private Long autor;
    @NotNull
    private Long coleccion;
    @NotNull
    @Size(min = 1)
    private List<Long> tematicas;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public Integer getPaginas() {
        return paginas;
    }

    public void setPaginas(Integer paginas) {
        this.paginas = paginas;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(Date fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public Date getFechaEdicion() {
        return fechaEdicion;
    }

    public void setFechaEdicion(Date fechaEdicion) {
        this.fechaEdicion = fechaEdicion;
    }

    public Date getFechaDisponible() {
        return fechaDisponible;
    }

    public void setFechaDisponible(Date fechaDisponible) {
        this.fechaDisponible = fechaDisponible;
    }

    public boolean getVisible() {
        return visible;
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getLinkPortada() {
        return linkPortada;
    }

    public void setLinkPortada(String linkPortada) {
        this.linkPortada = linkPortada;
    }

    public MultipartFile getPortada() {
        return portada;
    }

    public void setPortada(MultipartFile portada) {
        this.portada = portada;
    }

    public Long getEditorial() {
        return editorial;
    }

    public void setEditorial(Long editorial) {
        this.editorial = editorial;
    }

    public Long getAutor() {
        return autor;
    }

    public void setAutor(Long autor) {
        this.autor = autor;
    }

    public Long getColeccion() {
        return coleccion;
    }

    public void setColeccion(Long coleccion) {
        this.coleccion = coleccion;
    }

    public List<Long> getTematicas() {
        return tematicas == null ? new ArrayList<>() : tematicas;
    }

    public void setTematicas(List<Long> tematicas) {
        this.tematicas = tematicas;
    }
}

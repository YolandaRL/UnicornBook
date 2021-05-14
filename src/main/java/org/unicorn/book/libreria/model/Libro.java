package org.unicorn.book.libreria.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "LIBRO")
public class Libro implements Serializable {
    private static final long serialVersionUID = -4739214424066830932L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "ISBN")
    private String isbn;

    @Column(name = "TITULO")
    private String titulo;

    @Column(name = "SUBTITULO")
    private String subtitulo;

    @Column(name = "SINOPSIS")
    private String sinopsis;

    @Column(name = "PAGINAS")
    private Integer paginas;

    @Column(name = "FORMATO")
    private String formato;

    @Column(name = "FECHA_PUBLICACION")
    private Date fechaPublicacion;

    @Column(name = "FECHA_EDICION")
    private Date fechaEdicion;

    @Column(name = "FECHA_DISPONIBLE")
    private Date fechaDisponible;

    @Column(name = "VISIBLE")
    private boolean visible;

    @Column(name = "IDIOMA")
    private String idioma;

    @Column(name = "NOTAS")
    private String notas;

    @Column(name = "STOCK")
    private Integer stock;

    @Column(name = "PRECIO")
    private Float precio;

    @Column(name = "NOMBRE_PORTADA")
    private String linkPortada;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ID_EDITORIAL")
    private Editorial editorial;

    @JoinTable(name = "LIBRO_AUTOR", joinColumns = @JoinColumn(name = "ID_LIBRO", nullable = false), inverseJoinColumns = @JoinColumn(name = "ID_AUTOR", nullable = false))
    @ManyToOne(fetch = FetchType.EAGER)
    private Autor autor;

    @JoinTable(name = "LIBRO_COLECCION", joinColumns = @JoinColumn(name = "ID_LIBRO", nullable = false), inverseJoinColumns = @JoinColumn(name = "ID_COLECCION", nullable = false))
    @ManyToOne(fetch = FetchType.EAGER)
    private Coleccion coleccion;

    @JoinTable(name = "LIBRO_TEMATICA", joinColumns = @JoinColumn(name = "ID_LIBRO", nullable = false), inverseJoinColumns = @JoinColumn(name = "ID_TEMATICA", nullable = false))
    @OneToMany(fetch = FetchType.EAGER)
    private List<Tematica> tematicas;

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

    public boolean isVisible() {
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

    public Editorial getEditorial() {
        return editorial;
    }

    public void setEditorial(Editorial editorial) {
        this.editorial = editorial;
    }

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }

    public Coleccion getColeccion() {
        return coleccion;
    }

    public void setColeccion(Coleccion coleccion) {
        this.coleccion = coleccion;
    }

    public List<Tematica> getTematicas() {
        return tematicas;
    }

    public void setTematicas(List<Tematica> tematicas) {
        this.tematicas = tematicas;
    }
}

package org.unicorn.book.libreria.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.unicorn.book.libreria.dto.AutorView;
import org.unicorn.book.libreria.dto.LibroDto;
import org.unicorn.book.libreria.dto.LibroView;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.filter.LibroFilter;
import org.unicorn.book.libreria.service.LibroService;
import org.unicorn.book.usuario.dto.ComentarioForm;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BusquedaController {

    private final LibroService libroService;

    public BusquedaController(LibroService libroService) {
        this.libroService = libroService;
    }

    @ModelAttribute("filtro")
    public LibroFilter filtro() {
        return new LibroFilter();
    }

    @ModelAttribute("listAutores")
    public List<MaestroView> autores() {
        return libroService.getAllAutores();
    }

    @ModelAttribute("listTematicas")
    public List<MaestroView> tematicas() {
        return libroService.getAllTematicas();
    }

    @ModelAttribute("listColecciones")
    public List<MaestroView> colecciones() {
        return libroService.getAllColecciones();
    }

    @ModelAttribute("listEditoriales")
    public List<MaestroView> editoriales() {
        return libroService.getAllEditoriales();
    }

    @GetMapping("/busquedas")
    public String busquedaSimple(ModelMap model, @ModelAttribute("filtro") LibroFilter filter,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        if (!StringUtils.isEmpty(filter.getOrden())) {
            Sort.Direction d = StringUtils.isEmpty(filter.getDireccion()) || filter.getDireccion().equals("asc") ?
                    Sort.Direction.ASC :
                    Sort.Direction.DESC;
            Integer page = filter.getPage() == null ? 0 : filter.getPage();
            pageable = PageRequest.of(page, 20, d, filter.getOrden());
        }
        Page<LibroDto> libros = libroService.findLibros(filter, pageable);
        model.addAttribute("listadoLibros", libros);
        model.addAttribute("listComentarios",
                libroService.getAllComentariosByIdLibros(libros.get().map(LibroDto::getId).toArray(Long[]::new)));
        model.addAttribute("filtro", filter);
        model.addAttribute("precioMinimo", libroService.getMinimoPrecio());
        model.addAttribute("precioMaximo", libroService.getMaximoPrecio());

        return "libro/busquedas";
    }

    @GetMapping("/libro/{id}")
    public String get(@PathVariable("id") Long id, @RequestParam(name = "section", required = false) String section,
            ModelMap model, HttpServletRequest request) {
        final String referer = request.getHeader("referer");
        if (referer != null && referer.contains("busquedas")) {
            request.getSession().setAttribute("referer", referer);
            model.addAttribute("referer", referer);
        } else {
            request.getSession().removeAttribute("referer");

        }
        if ("comentarios".equals(section)) {
            model.addAttribute("scrollToComentarios", true);
        }
        model.addAttribute("comentarioForm", new ComentarioForm());
        LibroView libro = libroService.getLibro(id);
        request.getSession().setAttribute("libroId", libro.getId());
        request.getSession().setAttribute("tituloLibro", libro.getTitulo());
        model.addAttribute("libro", libro);
        model.addAttribute("listComentarios", libroService.getAllComentariosByIdLibros(id));
        return "libro/libro";
    }

    @GetMapping("/autor/{id}")
    private String getLibro(@PathVariable("id") Long id, ModelMap model, HttpServletRequest request) {
        AutorView autor = libroService.getAutor(id);
        if (request.getSession().getAttribute("libroId") != null) {
            model.addAttribute("libroId", request.getSession().getAttribute("libroId"));
            model.addAttribute("tituloLibro", request.getSession().getAttribute("tituloLibro"));
        }
        if (request.getSession().getAttribute("referer") != null) {
            model.addAttribute("referer", request.getSession().getAttribute("referer"));
        }
        model.addAttribute("autor", libroService.getAutor(id));
        model.addAttribute("listComentarios", libroService
                .getAllComentariosByIdLibros(autor.getLibros().stream().map(LibroView::getId).toArray(Long[]::new)));
        return "libro/autor";
    }

}

package org.unicorn.book.app.libro.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.unicorn.book.app.libro.dto.MaestroView;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;
import org.unicorn.book.app.libro.service.LibroService;

import java.util.List;

@Controller
public class BusquedaController {

    private final LibroService libroService;

    public BusquedaController(LibroService libroService) {
        this.libroService = libroService;
    }

    @ModelAttribute("filtro")
    public BusquedaSimpleFilter filtro() {
        return new BusquedaSimpleFilter();
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
    public String busquedaSimple(ModelMap model, @ModelAttribute("filtro") BusquedaSimpleFilter filter,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));
        model.addAttribute("filtro", filter);
        return "libro/busquedas";
    }

    @GetMapping("/busqueda-avanzada")
    public String busquedaAvanzada(ModelMap model, @ModelAttribute("filtro") BusquedaSimpleFilter filter,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));
        model.addAttribute("filtro", filter);
        return "libro/busquedas :: resultados";
    }

    /*
        @PostMapping("/busquedas")
        public String post(ModelMap model, @RequestParam(value = "termino", required = false) String termino,
                @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
            BusquedaSimpleFilter filter = new BusquedaSimpleFilter();
            filter.setTermino(termino);

            model.addAttribute("termino", termino);
            model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));

            return "libro/busquedas";
        }

        @PostMapping("/busqueda-avanzada")
        public String busquedaAvanzada(@ModelAttribute("filtro") BusquedaSimpleFilter filter, ModelMap model,
                @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
            model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));

            return "libro/busquedas :: resultados";
        }
    */
    @GetMapping("/libro/{id}")
    public String get(@PathVariable("id") Long id, ModelMap model) {
        model.addAttribute("libro", libroService.getLibro(id));
        return "libro/libro";
    }

    @GetMapping("/autor/{id}")
    private String getLibro(@PathVariable("id") Long id, ModelMap model) {
        model.addAttribute("autor", libroService.getAutor(id));
        return "libro/autor";
    }

}

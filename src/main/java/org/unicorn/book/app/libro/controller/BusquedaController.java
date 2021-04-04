package org.unicorn.book.app.libro.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;
import org.unicorn.book.app.libro.service.LibroService;

@Controller
public class BusquedaController {

    private final LibroService libroService;

    public BusquedaController(LibroService libroService) {
        this.libroService = libroService;
    }

    @GetMapping("/busquedas")
    public String get(ModelMap model, @RequestParam(value = "termino", required = false) String termino,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        BusquedaSimpleFilter filter = new BusquedaSimpleFilter();
        filter.setTermino(termino);

        model.addAttribute("termino", termino);
        model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));

        return "busquedas";
    }

    @PostMapping("/busquedas")
    public String post(ModelMap model, @RequestParam(value = "termino", required = false) String termino,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        BusquedaSimpleFilter filter = new BusquedaSimpleFilter();
        filter.setTermino(termino);

        model.addAttribute("termino", termino);
        model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));

        return "busquedas";
    }

    @GetMapping("/libro/{id}")
    public String get(@PathVariable("id") Long id, ModelMap model) {
        model.addAttribute("libro", libroService.getLibro(id));
        return "libro";
    }

}

package org.unicorn.book.app.libro.controller;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
            @RequestParam(value = "orden", required = false) String orden,
            @RequestParam(value = "direction", required = false) String direction,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        BusquedaSimpleFilter filter = new BusquedaSimpleFilter();
        filter.setTermino(termino);
        Sort.Direction directionSort = StringUtils.isEmpty(direction) || direction.equals("desc") ?
                Sort.Direction.DESC :
                Sort.Direction.ASC;
        orden = StringUtils.isEmpty(orden) ? "id" : orden;

        model.addAttribute("termino", termino);
        model.addAttribute("orden", orden);
        model.addAttribute("direction", direction);
        model.addAttribute("listadoLibros",
                libroService.findLibros(filter, PageRequest.of(pageable.getPageNumber(), 20, directionSort, orden)));

        return "libro/busquedas";
    }

    @PostMapping("/busquedas")
    public String post(ModelMap model, @RequestParam(value = "termino", required = false) String termino,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        BusquedaSimpleFilter filter = new BusquedaSimpleFilter();
        filter.setTermino(termino);

        model.addAttribute("termino", termino);
        model.addAttribute("listadoLibros", libroService.findLibros(filter, pageable));

        return "libro/busquedas";
    }

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

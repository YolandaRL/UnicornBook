package org.unicorn.book.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.unicorn.book.app.libro.dto.LibroView;
import org.unicorn.book.app.libro.service.LibroService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class InicioController {

    private final LibroService libroService;

    public InicioController(LibroService libroService) {
        this.libroService = libroService;
    }

    @GetMapping("/")
    public String getPortada(ModelMap model, HttpSession request) {
        request.setAttribute("libro", "libro-1");
        List<LibroView> all = new ArrayList<>();
        List<LibroView> novedades = libroService.getNovedades();
        all.addAll(novedades);
        List<LibroView> muestras = libroService.getMuestraLibros();
        all.addAll(muestras);
        model.addAttribute("listNovedades", novedades);
        model.addAttribute("listMuestreo", muestras);
        model.addAttribute("listComentarios",
                libroService.getAllComentariosByIdLibros(all.stream().map(LibroView::getId).toArray(Long[]::new)));
        return "index";
    }
}

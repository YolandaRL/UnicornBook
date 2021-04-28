package org.unicorn.book.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.unicorn.book.app.libro.service.LibroService;

import javax.servlet.http.HttpSession;

@Controller
public class InicioController {

    private final LibroService libroService;

    public InicioController(LibroService libroService) {
        this.libroService = libroService;
    }

    @GetMapping("/")
    public String getPortada(ModelMap model, HttpSession request) {
        request.setAttribute("libro", "libro-1");
        model.addAttribute("listNovedades", libroService.getNovedades());
        model.addAttribute("listMuestreo", libroService.getMuestraLibros());

        return "index";
    }
}

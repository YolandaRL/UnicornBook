package org.unicorn.book.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.unicorn.book.app.libro.service.LibroService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        model.addAttribute("listNovedades", libroService.getNovedades());
        model.addAttribute("listMuestreo", libroService.getMuestraLibros());
        return "index";
    }

    @GetMapping("/libro/mi-carrito")
    public String anadirLibroCarrito(HttpSession request) {
        System.out.println("ACTUAL " + request.getAttribute("libro"));

        return "usuario/mi-cesta/mi-cesta-simplificado :: mi-cesta-simplificado";
    }
}

package org.unicorn.book.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.unicorn.book.app.libro.service.LibroService;
import org.unicorn.book.app.usuario.service.CestaService;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.servlet.http.HttpSession;

@Controller
public class InicioController {

    private final LibroService libroService;
    private final CestaService cestaService;

    public InicioController(LibroService libroService, CestaService cestaService) {
        this.libroService = libroService;
        this.cestaService = cestaService;
    }

    @ModelAttribute("countCarrito")
    public Integer countLibrosCarrito() {
        if (!ObjectUtils.isEmpty(AuthenticationUtils.getIdUsuario())) {
            return cestaService.countCarrito();
        }
        return 0;
    }

    @GetMapping("/")
    public String getPortada(ModelMap model, HttpSession request) {
        request.setAttribute("libro", "libro-1");
        model.addAttribute("listNovedades", libroService.getNovedades());
        model.addAttribute("listMuestreo", libroService.getMuestraLibros());

        return "index";
    }
}

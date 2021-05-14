package org.unicorn.book.inicio.web;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.unicorn.book.libreria.dto.LibroView;
import org.unicorn.book.libreria.service.LibroService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InicioController {

    private final LibroService libroService;

    public InicioController(LibroService libroService) {
        this.libroService = libroService;
    }

    @Transactional
    @GetMapping("/")
    public String getPortada(ModelMap model, HttpSession request) {
        List<LibroView> muestras = libroService.getMuestraLibros();
        model.addAttribute("listNovedades", libroService.getNovedades());
        model.addAttribute("listMuestreo", muestras);
        model.addAttribute("listComentarios",
                libroService.getAllComentariosByIdLibros(muestras.stream().map(LibroView::getId).toArray(Long[]::new)));
        return "index";
    }
}

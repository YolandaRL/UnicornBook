package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.superusuario.service.ComentariosService;
import org.unicorn.book.superusuario.service.ProductosService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/comentarios")
public class ComentariosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ComentariosController.class);

    private final ComentariosService comentariosService;

    /**
     * Constructor
     *
     * @param comentariosService el servicio de comentarios {@link ProductosService}
     */
    public ComentariosController(ComentariosService comentariosService) {
        this.comentariosService = comentariosService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-comentarios";
    }

    @GetMapping
    public String getConsolaComentariosView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de comentarios y valoraciones");
        return "/admin/comentarios";
    }
}

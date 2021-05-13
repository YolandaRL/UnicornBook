package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/consultas-encargos")
public class ConsultaEncargoController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ConsultaEncargoController.class);

    /**
     * Constructor
     */
    public ConsultaEncargoController() {
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-consultas-encargos";
    }

    @GetMapping
    public String getConsolaConsultaEncargoView() {
        LOGGER.info("Accediendo a la vista principal de administración de consultas y encargos");
        return "/admin/consultas";
    }

}

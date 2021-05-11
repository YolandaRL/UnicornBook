package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.superusuario.service.ConsolaService;

@Controller
@RequestMapping("/consola")
public class ConsolaController {
    protected static final String ACTIVE_PAGE = "activePage";

    private static final Logger LOGGER = LoggerFactory.getLogger(ConsolaController.class);

    private final ConsolaService consolaService;

    /**
     * Constructor
     *
     * @param consolaService servicio de la consola {@link ConsolaService}
     */
    public ConsolaController(ConsolaService consolaService) {
        this.consolaService = consolaService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-index";
    }

    @GetMapping
    public String getConsolaView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración");
        model.addAttribute("estadisticasVentas", consolaService.getGraficaPedidos());
        return "/admin/index";
    }
}

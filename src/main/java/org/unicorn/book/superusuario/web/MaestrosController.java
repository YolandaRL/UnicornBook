package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/maestros")
public class MaestrosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(MaestrosController.class);
    private static final String ACTIVE_SUB_PAGE = "activeSubPage";

    /**
     * Constructor
     */
    public MaestrosController() {
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-maestros";
    }

    @GetMapping("/autores")
    public String getConsolaMaestrosAutoresView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de autores");
        model.addAttribute(ACTIVE_SUB_PAGE, "consola-maestros-autores");
        return "/admin/maestro/autor";
    }

    @GetMapping("/colecciones")
    public String getConsolaMaestrosColeccionesView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de colecciones");
        model.addAttribute(ACTIVE_SUB_PAGE, "consola-maestros-colecciones");
        return "/admin/maestro/coleccion";
    }

    @GetMapping("/tematicas")
    public String getConsolaMaestrosTematicasView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de tematicas");
        model.addAttribute(ACTIVE_SUB_PAGE, "consola-maestros-tematicas");
        return "/admin/maestro/tematica";
    }

    @GetMapping("/editoriales")
    public String getConsolaMaestrosEditorialesView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de editoriales");
        model.addAttribute(ACTIVE_SUB_PAGE, "consola-maestros-editoriales");
        return "/admin/maestro/editorial";
    }

}

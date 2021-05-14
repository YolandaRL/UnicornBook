package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/logs")
public class LogController {
    private static final Logger LOGGER = LoggerFactory.getLogger(LogController.class);

    /**
     * Constructor
     */
    public LogController() {
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-logs";
    }

    @GetMapping(value = { "", "/{fileName}" })
    public String getConsolaProductosView(@PathVariable(name = "fileName", required = false) String fileName,
            ModelMap model) {
        LOGGER.info("Accediendo a la vista de logs");
        try {
            String contenido = new String(
                    Files.readAllBytes(Paths.get(System.getProperty("app_log_path") + "/unicorn-book.log")));
            model.addAttribute("contenidoLog", new String(
                    Files.readAllBytes(Paths.get(System.getProperty("app_log_path") + "/unicorn-book.log"))));
        } catch (IOException e) {
            LOGGER.error("No se encuentra el archivo de log");
        }

        return "/admin/logs";
    }
}
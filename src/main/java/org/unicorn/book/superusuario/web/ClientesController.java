package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.superusuario.service.ClientesService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/clientes")
public class ClientesController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ClientesController.class);

    private final ClientesService clientesService;

    /**
     * Constructor
     *
     * @param clientesService el servicio de clientes {@link ClientesService}
     */
    public ClientesController(ClientesService clientesService) {
        this.clientesService = clientesService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-clientes";
    }

    @GetMapping
    public String getConsolaClientesView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de clientes");
        return "/admin/clientes";
    }
}

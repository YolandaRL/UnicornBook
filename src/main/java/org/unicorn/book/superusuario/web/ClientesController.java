package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.superusuario.filter.ClienteFilter;
import org.unicorn.book.superusuario.service.ClientesService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/clientes")
public class ClientesController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ClientesController.class);
    private static final String ATTR_LISTADO_CLIENTES = "listadoClientes";

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

    @ModelAttribute(name = "filtro")
    public ClienteFilter getFiltroCliente() {
        return new ClienteFilter();
    }

    @GetMapping
    public String getConsolaClientesView(ModelMap model, @ModelAttribute("filtro") ClienteFilter filter,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        LOGGER.info("Accediendo a la vista principal de administración de clientes");
        model.addAttribute(ATTR_LISTADO_CLIENTES, clientesService.getAllClientesByFilter(filter, pageable));
        return "/admin/clientes";
    }
}

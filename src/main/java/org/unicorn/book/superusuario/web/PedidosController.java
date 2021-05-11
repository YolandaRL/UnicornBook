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
import org.unicorn.book.superusuario.filter.PedidoFilter;
import org.unicorn.book.superusuario.service.PedidosService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/pedidos")
public class PedidosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(PedidosController.class);
    private static final String ATTR_LISTADO_PEDIDOS = "listadoPedidos";

    private final PedidosService pedidosService;

    /**
     * Constructor
     *
     * @param pedidosService servicio de pedidos {@link PedidosService}
     */
    public PedidosController(PedidosService pedidosService) {
        this.pedidosService = pedidosService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-pedidos";
    }

    @ModelAttribute(name = "filtro")
    public PedidoFilter getFiltroPedidos() {
        return new PedidoFilter();
    }

    @GetMapping
    public String getConsolaPedidosView(ModelMap model, @ModelAttribute("filtro") PedidoFilter filter,
            @PageableDefault(sort = "compra.fechaCompra", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        LOGGER.info("Accediendo a la vista principal de administración de pedidos");
        model.addAttribute(ATTR_LISTADO_PEDIDOS, pedidosService.getAllPedidosByFilter(filter, pageable));
        return "/admin/pedidos";
    }
}

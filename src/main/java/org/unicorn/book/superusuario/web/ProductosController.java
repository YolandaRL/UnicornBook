package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.superusuario.service.ProductosService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/productos")
public class ProductosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProductosController.class);

    private final ProductosService productosService;

    /**
     * Constructor
     *
     * @param productosService servicio de productos {@link ProductosService}
     */
    public ProductosController(ProductosService productosService) {
        this.productosService = productosService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-productos";
    }

    @GetMapping
    public String getConsolaProductosView(ModelMap model) {
        LOGGER.info("Accediendo a la vista principal de administración de productos");
        return "/admin/productos";
    }
}

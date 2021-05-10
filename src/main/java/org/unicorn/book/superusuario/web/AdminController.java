package org.unicorn.book.superusuario.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/consola")
public class AdminController {

    private static final String ACTIVE_PAGE = "activePage";

    @GetMapping
    public String getConsolaView(ModelMap model) {
        model.addAttribute(ACTIVE_PAGE, "consola-index");
        return "/admin/index";
    }

    @GetMapping("/pedidos")
    public String getConsolaPedidosView(ModelMap model) {
        model.addAttribute(ACTIVE_PAGE, "consola-pedidos");
        return "/admin/pedidos";
    }

    @GetMapping("/productos")
    public String getConsolaProductosView(ModelMap model) {
        model.addAttribute(ACTIVE_PAGE, "consola-productos");
        return "/admin/productos";
    }

    @GetMapping("/clientes")
    public String getConsolaClientesView(ModelMap model) {
        model.addAttribute(ACTIVE_PAGE, "consola-clientes");
        return "/admin/clientes";
    }

    @GetMapping("/comentarios")
    public String getConsolaComentariosView(ModelMap model) {
        model.addAttribute(ACTIVE_PAGE, "consola-comentarios");
        return "/admin/comentarios";
    }
}

package org.unicorn.book.superusuario.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/consola")
public class AdminController {
    @GetMapping
    public String getConsolaView() {
        return "/admin/index";
    }
}

package org.unicorn.book.w.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BusquedaController {

    @PostMapping("/busquedas")
    public String post(@RequestParam(value = "termino", required = false) String termino, ModelMap model) {

        model.addAttribute("termino", termino);
        return "busquedas";
    }


    @GetMapping("/busquedas")
    public String get(@RequestParam(value = "termino", required = false) String termino, ModelMap model) {

        model.addAttribute("termino", termino);
        return "busquedas";
    }
}

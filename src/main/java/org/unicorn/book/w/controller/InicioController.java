package org.unicorn.book.w.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class InicioController {

    @GetMapping
    public String hello() {
        return "index";
    }

    @GetMapping("/hello")
    public String hello2(HttpServletRequest request, ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        return "hello";
    }
}

package org.unicorn.book.w.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.unicorn.book.w.dto.RegistroForm;

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

    @GetMapping("/registro")
    public String registroget(HttpServletRequest request, ModelMap model) {
        model.addAttribute("registroForm", new RegistroForm());
        return "registro";
    }

    @PostMapping("/usuario/registro")
    public String registropost(@ModelAttribute("registroForm") RegistroForm registroForm, HttpServletRequest request) {
        return "redirect:"+request.getHeader("referer");
    }
}

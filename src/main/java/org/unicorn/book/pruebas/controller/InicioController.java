package org.unicorn.book.pruebas.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.unicorn.book.app.usuario.model.Rol;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.UsuarioRepository;
import org.unicorn.book.pruebas.UserService;
import org.unicorn.book.pruebas.dto.RegistroForm;

import javax.management.relation.Role;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class InicioController {

    private final UserService userService;

    public InicioController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String hello() {
        return "index";
    }

    @GetMapping("/hello")
    public String hello2(HttpServletRequest request, ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        return "hello";
    }

    @GetMapping(value = "/registro")
    public String registroget(HttpServletRequest request, ModelMap model) {
        model.addAttribute("registroForm", new RegistroForm());
        return "registro";
    }

    @RequestMapping(value = "/usuario/registro", method = { RequestMethod.GET, RequestMethod.POST})
    @Transactional
    public String registropost(@Valid @ModelAttribute("registroForm") RegistroForm registroForm, BindingResult result,
            HttpServletRequest request) {
        if (result.hasErrors()) {
            return "registro";
        } else {
           userService.registro(registroForm);
            return "index";
        }
    }
}

package org.unicorn.book.app.usuario.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.app.usuario.service.UsuarioService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

    private static Logger LOGGER = LoggerFactory.getLogger(UsuarioController.class);

    private final UsuarioService usuarioService;

    /**
     *
     * @param usuarioService
     */
    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @ModelAttribute(name = "registroForm")
    public UsuarioForm getRegistroForm() {
        return new UsuarioForm();
    }

    @GetMapping(value = "/nuevo")
    public String vistaFormularioRegistro(HttpServletRequest request, ModelMap model) {
        model.addAttribute("usuarioForm", new UsuarioForm());
        return "registro";
    }

    @PostMapping(value = "/nuevo")
    public String submitFormularioRegistro(@Valid @ModelAttribute("registroForm") UsuarioForm usuarioForm,
            BindingResult result) {
        if (result.hasErrors()) {
            return "registro";
        } else {
            try {
                usuarioService.altaUsuario(usuarioForm);
            } catch (UsernameDuplicatedException e) {
                LOGGER.error(e.getMessage(), e);
                result.rejectValue("usuario", "usuario", e.getMessage());
                return "registro";
            } catch (EmailDuplicatedException e) {
                LOGGER.error(e.getMessage(), e);
                result.rejectValue("correo", "correo", e.getMessage());
                return "registro";
            }
            return "index";
        }
    }

    @GetMapping(value = "/perfil")
    public String obtienePerfilForm(ModelMap model) {
        model.addAttribute("usuarioForm", usuarioService.getFormularioUsuario());
        return "usuario/perfil";
    }

    @PostMapping(value = "/perfil")
    public String actualizaPerfil(@Valid @ModelAttribute("usuarioForm") UsuarioForm usuarioForm, BindingResult result,
            ModelMap model) {
        if (result.hasErrors()) {
            return "usuario/perfil";
        } else {
            model.addAttribute("usuarioForm", usuarioService.actualizarUsuario(usuarioForm));
        }
        return "usuario/perfil";
    }

    @GetMapping(value = "/direcciones")
    public String obtenerDirecciones() {
        return "usuario/mis-direcciones";
    }

    @PostMapping(value = "/direcciones")
    public String actualizaCreaDireccion() {
        return "usuario/mis-direcciones";
    }

    @GetMapping(value = "/intereses")
    public String intereses() {
        return "usuario/intereses";
    }

    @GetMapping(value = "/pedidos")
    public String pedidos() {
        return "usuario/mis-pedidos";
    }

    @GetMapping(value = "/consultas")
    public String consultas() {
        return "usuario/historial-consultas";
    }

    @GetMapping(value = "/reservas")
    public String reservas() {
        return "usuario/historial-reservas";
    }

    @GetMapping(value = "/comentarios")
    public String comentarios() {
        return "usuario/comentarios";
    }
}

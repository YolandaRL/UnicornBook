package org.unicorn.book.app.usuario.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.unicorn.book.app.usuario.dto.DireccionForm;
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
            return "redirect:/";
        }
    }

    @GetMapping(value = "/baja")
    public String bajaUsuario(RedirectAttributes ra, HttpServletRequest httpServletRequest) {
        usuarioService.bajaUsuario();
        ra.addFlashAttribute("msgToastSuccess", "Su cuenta ha sido eliminado correctamente");
        httpServletRequest.getSession().invalidate();
        return "redirect:/logout";
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
            model.addAttribute("exito", true);
            model.addAttribute("usuarioForm", usuarioService.actualizarUsuario(usuarioForm));
        }
        return "usuario/perfil";
    }

    @GetMapping(value = "/direcciones")
    public String obtenerDirecciones(ModelMap model) {
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        return "usuario/mis-direcciones";
    }

    @GetMapping(value = "/direccion/getForm")
    public String getFormularioDireccion(@RequestParam(name = "id", required = false) Long id, ModelMap model) {
        if (id != null) {
            model.addAttribute("direccionForm", usuarioService.getDireccionFormEdicion(id));
        } else {
            model.addAttribute("direccionForm", new DireccionForm());
        }
        return "usuario/modals/modal-direccion :: modalDireccion";
    }

    @PostMapping(value = "/direccion")
    public String actualizaCreaDireccion(@Valid @ModelAttribute("direccionForm") DireccionForm direccionForm,
            BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("error", true);
            return "usuario/modals/modal-direccion :: modalDireccion";
        }
        model.addAttribute("error", false);
        usuarioService.altaOActualizarDireccion(direccionForm);
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        return "usuario/mis-direcciones :: direcciones-table";
    }

    @GetMapping(value = "/direccion/{id}/eliminar")
    public String eliminarDireccion(@PathVariable("id") Long idDireccion, ModelMap model) {
        usuarioService.eliminarDireccion(idDireccion);
        return "redirect:/usuario/direcciones";
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

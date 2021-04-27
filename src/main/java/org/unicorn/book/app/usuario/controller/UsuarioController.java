package org.unicorn.book.app.usuario.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.unicorn.book.app.usuario.dto.DireccionForm;
import org.unicorn.book.app.usuario.dto.TarjetaForm;
import org.unicorn.book.app.usuario.dto.UsuarioForm;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.app.usuario.service.CestaService;
import org.unicorn.book.app.usuario.service.UsuarioService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

    private static Logger LOGGER = LoggerFactory.getLogger(UsuarioController.class);

    private final UsuarioService usuarioService;
    private final CestaService cestaService;

    public UsuarioController(UsuarioService usuarioService, CestaService cestaService) {
        this.usuarioService = usuarioService;
        this.cestaService = cestaService;
    }

    @ModelAttribute(name = "usuarioForm")
    public UsuarioForm getRegistroForm() {
        return new UsuarioForm();
    }

    @GetMapping(value = "/nuevo")
    public String vistaFormularioRegistro(HttpServletRequest request, ModelMap model) {
        model.addAttribute("usuarioForm", new UsuarioForm());
        return "usuario/registro";
    }

    @PostMapping(value = "/nuevo")
    public String submitFormularioRegistro(@Valid @ModelAttribute("usuarioForm") UsuarioForm usuarioForm,
            BindingResult result) {
        if (result.hasErrors()) {
            return "usuario/registro";
        } else {
            try {
                usuarioService.altaUsuario(usuarioForm);
            } catch (UsernameDuplicatedException e) {
                LOGGER.error(e.getMessage(), e);
                result.rejectValue("usuario", "usuario", e.getMessage());
                return "usuario/registro";
            } catch (EmailDuplicatedException e) {
                LOGGER.error(e.getMessage(), e);
                result.rejectValue("correo", "correo", e.getMessage());
                return "usuario/registro";
            }
            return "redirect:/";
        }
    }

    @GetMapping(value = "/baja")
    public String bajaUsuario(RedirectAttributes ra, HttpServletRequest httpServletRequest) {
        usuarioService.bajaUsuario();
        ra.addFlashAttribute("msgToastSuccess", "Su cuenta ha sido eliminado correctamente");
        httpServletRequest.getSession().invalidate();
        return "redirect:/cerrar-sesison";
    }

    @GetMapping(value = "/perfil")
    public String obtienePerfilForm(ModelMap model) {
        model.addAttribute("usuarioForm", usuarioService.getFormularioUsuario());
        model.addAttribute("activeTab", "perfil");
        return "usuario/mi-cuenta/index";
    }

    @PostMapping(value = "/perfil")
    public String actualizaPerfil(@Valid @ModelAttribute("usuarioForm") UsuarioForm usuarioForm, BindingResult result,
            ModelMap model, HttpServletRequest request) {
        model.addAttribute("activeTab", "perfil");
        if (result.hasErrors()) {
            return "usuario/mi-cuenta/index";
        } else {
            model.addAttribute("exito", true);
            model.addAttribute("usuarioForm", usuarioService.actualizarUsuario(usuarioForm));
        }
        return "usuario/mi-cuenta/index";
    }

    @GetMapping(value = "/direcciones")
    public String obtenerDirecciones(ModelMap model) {
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        model.addAttribute("activeTab", "direcciones");
        return "usuario/mi-cuenta/index";
    }

    @GetMapping(value = "/direccion/getForm")
    public String getFormularioDireccion(@RequestParam(name = "id", required = false) Long id, ModelMap model) {
        model.addAttribute("activeTab", "direcciones");
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
        model.addAttribute("activeTab", "direcciones");
        if (result.hasErrors()) {
            model.addAttribute("error", true);
            return "usuario/modals/modal-direccion :: modalDireccion";
        }
        model.addAttribute("error", false);
        usuarioService.altaOActualizarDireccion(direccionForm);
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        return "usuario/mi-cuenta/mis-direcciones :: direcciones-table";
    }

    @GetMapping(value = "/direccion/{id}/eliminar")
    public String eliminarDireccion(@PathVariable("id") Long idDireccion, ModelMap model) {
        usuarioService.eliminarDireccion(idDireccion);
        return "redirect:/usuario/direcciones";
    }

    @GetMapping(value = "/tarjetas")
    public String obtenerTarjetas(ModelMap model) {
        model.addAttribute("tarjetas", usuarioService.getTarjetas());
        model.addAttribute("activeTab", "tarjetas");
        return "usuario/mi-cuenta/index";
    }

    @GetMapping(value = "/tarjeta/getForm")
    public String getFormularioTarjeta(@RequestParam(name = "id", required = false) Long id, ModelMap model) {
        model.addAttribute("activeTab", "tarjetas");
        if (id != null) {
            model.addAttribute("tarjetaForm", usuarioService.getTarjetaFormEdicion(id));
        } else {
            model.addAttribute("tarjetaForm", new TarjetaForm());
        }
        return "usuario/modals/modal-tarjeta :: modalTarjeta";
    }

    @PostMapping(value = "/tarjeta")
    public String actualizaCreaTarjeta(@Valid @ModelAttribute("tarjetaForm") TarjetaForm tarjetaForm,
            BindingResult result, ModelMap model) {
        model.addAttribute("activeTab", "tarjetas");
        if (result.hasErrors()) {
            model.addAttribute("error", true);
            return "usuario/modals/modal-tarjeta :: modalTarjeta";
        }
        model.addAttribute("error", false);
        usuarioService.altaOActualizarTarjeta(tarjetaForm);
        model.addAttribute("tarjetas", usuarioService.getTarjetas());

        return "usuario/mi-cuenta/mis-tarjetas :: tarjetas-table";
    }

    @GetMapping(value = "/tarjeta/{id}/eliminar")
    public String eliminarTarjeta(@PathVariable("id") Long idTarjeta) {
        usuarioService.eliminarTarjeta(idTarjeta);
        return "redirect:/usuario/tarjetas";
    }

    @GetMapping("/carrito/get")
    public String getCarrito(ModelMap model) {
        model.addAttribute("productos", cestaService.getCarritoCompra());
        return "usuario/mi-cesta/mi-cesta-simplificado :: cesta-simplificada";
    }

    @PostMapping("/carrito/add")
    public String actualizarCarrito(ModelMap model, @RequestParam("idLibro") Long id,
            @RequestParam(name = "cantidad", required = false) Integer cantidad) {
        model.addAttribute("productos", cestaService.addLibroCarritoCompra(id, cantidad));
        model.addAttribute("offcanvasCarrito", true);
        return "redirect:/libro/" + id;
    }

    @GetMapping(value = "/pedidos")
    public String pedidos() {
        return "usuario/mis-pedidos";
    }

    @GetMapping(value = "/comentarios")
    public String comentarios() {
        return "usuario/mis-comentarios";
    }
}

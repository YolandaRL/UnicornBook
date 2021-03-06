package org.unicorn.book.usuario.web;

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
import org.unicorn.book.usuario.dto.CestaView;
import org.unicorn.book.usuario.dto.ComentarioForm;
import org.unicorn.book.usuario.dto.CompraForm;
import org.unicorn.book.usuario.dto.DireccionForm;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.dto.TarjetaForm;
import org.unicorn.book.usuario.dto.UsuarioForm;
import org.unicorn.book.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.usuario.service.CestaService;
import org.unicorn.book.usuario.service.ComentarioService;
import org.unicorn.book.usuario.service.UsuarioService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

import static org.unicorn.book.usuario.dto.CompraStep.CONFIRMACION;
import static org.unicorn.book.usuario.dto.CompraStep.ENVIO;
import static org.unicorn.book.usuario.dto.CompraStep.INICIO;
import static org.unicorn.book.usuario.dto.CompraStep.PAGO;

@Controller
@RequestMapping("usuario")
public class UsuarioController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UsuarioController.class);

    private final UsuarioService usuarioService;
    private final CestaService cestaService;
    private final ComentarioService comentarioService;

    public UsuarioController(UsuarioService usuarioService, CestaService cestaService,
            ComentarioService comentarioService) {
        this.usuarioService = usuarioService;
        this.cestaService = cestaService;
        this.comentarioService = comentarioService;
    }

    @ModelAttribute(name = "usuarioForm")
    public UsuarioForm getRegistroForm() {
        return new UsuarioForm();
    }

    @ModelAttribute("comentarioForm")
    public ComentarioForm getComentarioForm() {
        return new ComentarioForm();
    }

    @ModelAttribute("tiposTarjeta")
    public List<TablaMaestraView> tiposTarjeta() {
        return cestaService.getTiposTarjeta();
    }

    @ModelAttribute("tiposEntrega")
    public List<TablaMaestraView> tiposEntrega() {
        return cestaService.getTiposEntrega();
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
        return "redirect:/cerrar-sesion";
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

    @PostMapping(value = "/direccion-carrito")
    public String actualizaCreaDireccionCarrito(@Valid @ModelAttribute("direccionForm") DireccionForm direccionForm,
            BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("error", true);
            return "usuario/modals/modal-direccion :: modalDireccion";
        }
        model.addAttribute("error", false);
        usuarioService.altaOActualizarDireccion(direccionForm);
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        return "usuario/mi-cesta/mi-cesta :: direcciones";
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

    @PostMapping(value = "/tarjeta-carrito")
    public String actualizaCreaTarjetaCarrito(@Valid @ModelAttribute("tarjetaForm") TarjetaForm tarjetaForm,
            BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("error", true);
            return "usuario/modals/modal-tarjeta :: modalTarjeta";
        }
        model.addAttribute("error", false);
        usuarioService.altaOActualizarTarjeta(tarjetaForm);
        model.addAttribute("tarjetas", usuarioService.getTarjetas());

        return "usuario/mi-cesta/mi-cesta :: tarjetas";
    }

    @GetMapping(value = "/tarjeta/{id}/eliminar")
    public String eliminarTarjeta(@PathVariable("id") Long idTarjeta) {
        usuarioService.eliminarTarjeta(idTarjeta);
        return "redirect:/usuario/tarjetas";
    }

    @GetMapping("/cesta/vaciar")
    public String vaciar() {
        cestaService.vaciarCesta();
        return "redirect:/usuario/carrito";
    }

    @GetMapping("/cesta/eliminar/{idLibro}")
    public String eliminar(@PathVariable("idLibro") Long idLibro) {
        cestaService.eliminarLibro(idLibro);
        return "redirect:/usuario/carrito";
    }

    @GetMapping("/carrito")
    public String getCarrito(ModelMap model) {
        model.addAttribute("compraForm", new CompraForm());
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        model.addAttribute("tarjetas", usuarioService.getTarjetas());
        List<CestaView> carrito = cestaService.getCarritoCompra();
        model.addAttribute("productos", carrito);
        model.addAttribute("totalCarrito", getTotalCarrito(carrito));
        return "usuario/mi-cesta/mi-cesta";
    }

    @GetMapping("/carrito/get")
    public String getCarritoSimplificado(ModelMap model) {
        model.addAttribute("productos", cestaService.getCarritoCompra());
        return "usuario/mi-cesta/mi-cesta-simplificado :: cesta-simplificada";
    }

    @GetMapping("/carrito/update/{idLibro}/{cantidad}")
    public String actualizarCarrito1(RedirectAttributes ra,
            @RequestParam(name = "showCestaSimplificado", required = false, defaultValue = "true") Boolean showCestaSimplificado,
            @PathVariable("idLibro") Long id, @PathVariable(name = "cantidad") Integer cantidad,
            HttpServletRequest request) {
        final String referer = request.getHeader("referer");
        cestaService.addLibroCarritoCompra(id, cantidad);
        ra.addFlashAttribute("showCestaSimplificado", showCestaSimplificado);
        ra.addFlashAttribute("productos", cestaService.getCarritoCompra());
        return "redirect:" + referer;
    }

    @PostMapping("/carrito/add")
    public String actualizarCarrito(RedirectAttributes ra, @RequestParam("idLibro") Long id,
            @RequestParam(name = "cantidad", required = false) Integer cantidad, HttpServletRequest request) {
        final String referer = request.getHeader("referer");
        cestaService.addLibroCarritoCompra(id, cantidad);
        ra.addFlashAttribute("showCestaSimplificado", true);
        ra.addFlashAttribute("productos", cestaService.getCarritoCompra());
        return "redirect:" + referer;
    }

    @PostMapping("/confirmar-pedido")
    public String confirmarPedido(@Valid @ModelAttribute("compraForm") CompraForm compraForm) {
        cestaService.confirmarPedido(compraForm);
        return "redirect:/usuario/pedidos";
    }

    @PostMapping("/cesta/siguiente-paso")
    public String cestaSiguientePaso(@Valid @ModelAttribute("compraForm") CompraForm compraForm, BindingResult result,
            ModelMap model) {
        this.evaluaNextStep(compraForm, result, model);
        model.addAttribute("direcciones", usuarioService.getDirecciones());
        model.addAttribute("tarjetas", usuarioService.getTarjetas());
        List<CestaView> carrito = cestaService.getCarritoCompra();
        model.addAttribute("productos", carrito);
        model.addAttribute("totalCarrito", getTotalCarrito(carrito));
        return "usuario/mi-cesta/mi-cesta :: carrito";
    }

    @GetMapping(value = "/pedidos")
    public String pedidos(ModelMap model) {
        model.addAttribute("pedidos", usuarioService.getPedidos());
        return "usuario/mis-pedidos";
    }

    @GetMapping(value = "/comentarios")
    public String comentarios(ModelMap model) {
        model.addAttribute("comentarios", comentarioService.getComentarios());
        return "usuario/mis-comentarios";
    }

    private double getTotalCarrito(List<CestaView> cesta) {
        return cesta.stream().mapToDouble(c -> c.getCantidad() * c.getLibroPrecio()).sum();
    }

    private void evaluaNextStep(CompraForm form, BindingResult result, ModelMap model) {
        switch (form.getSiguientePasoSolicitado()) {
        case INICIO:
            model.addAttribute("SIGUIENTE_PASO", INICIO.name());
            break;
        case ENVIO:
            model.addAttribute("SIGUIENTE_PASO", ENVIO.name());
            break;
        case PAGO:
            if (result.hasFieldErrors("idTipoEntrega")) {
                model.addAttribute("SIGUIENTE_PASO", ENVIO.name());
                model.addAttribute("error", "Es necesario un tipo de entrega");
            } else if (!result.hasFieldErrors("idTipoEntrega") && result.hasFieldErrors("idDireccion")) {
                model.addAttribute("SIGUIENTE_PASO", ENVIO.name());
                model.addAttribute("error",
                        "Es obligatorio indicar una direcci??n de envio cuando el tipo de entrega es postal");
            } else {
                model.addAttribute("SIGUIENTE_PASO", PAGO.name());
            }
            break;
        case CONFIRMACION:
            if (result.hasFieldErrors("idTarjeta")) {
                model.addAttribute("SIGUIENTE_PASO", PAGO.name());
                model.addAttribute("error", "Es obligatorio necesario indiciar una tarjeta para realizar el cobro");
            } else {
                model.addAttribute("SIGUIENTE_PASO", CONFIRMACION.name());
            }
            break;
        default:
            model.addAttribute("SIGUIENTE_PASO", INICIO.name());
            break;
        }
    }
}

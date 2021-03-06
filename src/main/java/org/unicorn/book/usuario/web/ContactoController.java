package org.unicorn.book.usuario.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.libreria.service.LibroService;
import org.unicorn.book.usuario.dto.ConsultaForm;
import org.unicorn.book.usuario.dto.EncargoForm;
import org.unicorn.book.usuario.dto.TablaMaestraView;
import org.unicorn.book.usuario.dto.TipoOperacion;
import org.unicorn.book.usuario.exception.LibroConStockException;
import org.unicorn.book.usuario.service.ContactoService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("contacto")
public class ContactoController {

    private final ContactoService contactoService;
    private final LibroService libroService;

    public ContactoController(ContactoService contactoService, LibroService libroService) {
        this.contactoService = contactoService;
        this.libroService = libroService;
    }

    @ModelAttribute("tiposOperacion")
    public List<TablaMaestraView> tiposOperacion() {
        return contactoService.getTiposOperacion();
    }

    @ModelAttribute("tipoEntrega")
    public List<TablaMaestraView> tiposEntrega() {
        return contactoService.getTiposEntraga();
    }

    @ModelAttribute("consultaForm")
    public ConsultaForm consultaForm() {
        return new ConsultaForm();
    }

    @ModelAttribute("encargoForm")
    public EncargoForm encargoForm() {
        return new EncargoForm();
    }

    @GetMapping()
    public String getContacto(@RequestParam(name = "tipo", required = false) TipoOperacion tipo,
            @RequestParam(name = "libro", required = false) Long libroId, ModelMap model) {
        if (tipo != null) {
            model.addAttribute("tipoOperacion", tipo.getId());
        }
        if (libroId != null) {
            model.addAttribute("libro", libroService.getLibro(libroId));
        }
        return "usuario/contacto";
    }

    @GetMapping(value = "/encargos")
    public String getEncargos(ModelMap model) {
        model.addAttribute("encargos", contactoService.getEncargos());
        return "usuario/mis-encargos";
    }

    @PostMapping(value = "/encargo")
    public String nuevoEncargo(@Valid @ModelAttribute("encargoForm") EncargoForm encargoForm, BindingResult result,
            ModelMap model, RedirectAttributes ra) {
        if (result.hasErrors()) {
            ra.addFlashAttribute("error", "Corrija los errores marcados en el formulario");
            ra.addFlashAttribute("tipoOperacion", TipoOperacion.ENCARGO.getId());
            ra.addFlashAttribute("encargoForm", encargoForm);
            ra.addFlashAttribute("org.springframework.validation.BindingResult.encargoForm", result);
            model.addAttribute("error", "Faltan datos obligatorios para realizar la consulta");

            return "redirect:/contacto";
        }
        try {
            contactoService.nuevoEncargo(encargoForm);
        } catch (LibroConStockException e) {
            model.addAttribute("error", "El libro indicado se encuentra con stock en la librer??a");
            model.addAttribute("tipoOperacion", TipoOperacion.ENCARGO.getId());
            return "usuario/contacto";
        }
        model.addAttribute("encargos", contactoService.getEncargos());

        if (AutenticacionUtils.getIdUsuario() == null) {
            model.addAttribute("message", "Enviada petici??n de encargo con ??xito");
            return "usuario/contacto";
        } else {
            return "redirect:/contacto/encargos";
        }
    }

    @GetMapping(value = "/consultas")
    public String getConsultas(ModelMap model) {
        model.addAttribute("consultas", contactoService.getConsultas());
        return "usuario/mis-consultas";
    }

    @PostMapping(value = "/consulta")
    public String nuevaConsulta(@Valid @ModelAttribute("consultaForm") ConsultaForm consultaForm, BindingResult result,
            ModelMap model, RedirectAttributes ra) {

        if (result.hasErrors()) {
            ra.addFlashAttribute("error", "Corrija los errores marcados en el formulario");
            ra.addFlashAttribute("tipoOperacion", TipoOperacion.CONSULTA.getId());
            ra.addFlashAttribute("consultaForm", consultaForm);
            ra.addFlashAttribute("org.springframework.validation.BindingResult.consultaForm", result);
            model.addAttribute("error", "Faltan campos obligatorios para realizar la consulta");
            return "redirect:/contacto";
        }

        contactoService.nuevaConsulta(consultaForm);
        model.addAttribute("consultas", contactoService.getConsultas());
        if (AutenticacionUtils.getIdUsuario() == null) {
            model.addAttribute("message", "Consulta enviada con ??xito");
            return "usuario/contacto";
        } else {
            return "redirect:/contacto/consultas";
        }

    }
}

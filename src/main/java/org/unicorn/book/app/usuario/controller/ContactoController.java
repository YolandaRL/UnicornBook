package org.unicorn.book.app.usuario.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.unicorn.book.app.usuario.dto.ConsultaForm;
import org.unicorn.book.app.usuario.dto.EncargoForm;
import org.unicorn.book.app.usuario.dto.TablaMaestraView;
import org.unicorn.book.app.usuario.dto.TipoOperacion;
import org.unicorn.book.app.usuario.service.ContactoService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("contacto")
public class ContactoController {

    private final ContactoService contactoService;

    public ContactoController(ContactoService contactoService) {
        this.contactoService = contactoService;
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
    public String getContacto(@RequestParam(name = "tipo", required = false) TipoOperacion tipo, ModelMap model) {
        if (tipo != null) {
            model.addAttribute("tipoOperacion", tipo.getId());
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
            ra.addFlashAttribute("error", true);
            ra.addFlashAttribute("tipoOperacion", TipoOperacion.ENCARGO.getId());
            ra.addFlashAttribute("encargoForm", encargoForm);
            ra.addFlashAttribute("org.springframework.validation.BindingResult.encargoForm", result);
            return "redirect:/contacto";
        }
        model.addAttribute("error", false);
        contactoService.nuevoEncargo(encargoForm);
        model.addAttribute("encargos", contactoService.getEncargos());
        return "redirect:/usuario/mis-encargos";
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
            ra.addFlashAttribute("error", true);
            ra.addFlashAttribute("tipoOperacion", TipoOperacion.CONSULTA.getId());
            ra.addFlashAttribute("consultaForm", consultaForm);
            ra.addFlashAttribute("org.springframework.validation.BindingResult.consultaForm", result);

            return "redirect:/contacto";
        }
        model.addAttribute("error", false);
        contactoService.nuevaConsulta(consultaForm);
        model.addAttribute("consultas", contactoService.getConsultas());
        return "redirect:/usuario/mis-consultas";
    }
}

package org.unicorn.book.usuario.web;

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
import org.unicorn.book.libreria.service.LibroService;
import org.unicorn.book.usuario.dto.ComentarioForm;
import org.unicorn.book.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.usuario.exception.LibroYaComentadoException;
import org.unicorn.book.usuario.service.ComentarioService;

import javax.validation.Valid;

@Controller
@RequestMapping("/usuario/comentario")
public class ComentarioController {

    private final LibroService libroService;
    private final ComentarioService comentarioService;

    public ComentarioController(LibroService libroService, ComentarioService comentarioService) {
        this.libroService = libroService;
        this.comentarioService = comentarioService;
    }

    @ModelAttribute("comentarioForm")
    public ComentarioForm getComentarioForm() {
        return new ComentarioForm();
    }

    @PostMapping
    public String nuevoComentarioFromLibro(@Valid @ModelAttribute("comentarioForm") ComentarioForm comentarioForm,
            BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            try {
                comentarioService.nuevoComentario(comentarioForm);
                model.addAttribute("success",
                        "Tu valoración del libro se ha publicado correctamente y el comentario adjunto a esta será moderado en un plazo de 1 a 2 días");
            } catch (LibroNoCompradoException e) {
                model.addAttribute("error", "Para valorar este libro es necesario haberlo comprado previamente.");
            } catch (LibroYaComentadoException e) {
                model.addAttribute("error",
                        "Ya has dejado una valoración en este libro. Puedes editarla si lo deseas.");
            }
        }
        model.addAttribute("listComentarios", libroService.getAllComentariosByIdLibros(comentarioForm.getIdLibro()));
        return "libro/libro :: comentarios";
    }

    @GetMapping("/{idLibro}/eliminar")
    public String eliminarComentario(@PathVariable("idLibro") Long idLibro,
            @RequestParam(name = "type", required = false) String type, RedirectAttributes ra) {
        comentarioService.eliminarComentario(idLibro);
        ra.addFlashAttribute("success", "Comentario eliminado correctamente");

        if ("DESDE_LIBRO".equals(type)) {
            return "redirect:/libro/" + idLibro;
        } else {
            return "redirect:/usuario/comentarios";
        }
    }

    @GetMapping("/editar/libro/{idLibro}")
    public String getComentarioForm(@PathVariable("idLibro") Long idLibro, ModelMap model) {

        model.addAttribute("comentarioForm", comentarioService.getComentarioForm(idLibro));

        return "usuario/modals/modal-comentario :: comentario-form";
    }

    @PostMapping("/editar")
    public String editarComentario(@Valid @ModelAttribute("comentarioForm") ComentarioForm comentarioForm,
            @RequestParam(name = "type", required = false) String type, ModelMap model) {
        comentarioService.editarComentario(comentarioForm);
        model.addAttribute("success", "Comentario actualizado correctamente");
        if (type.equals("DESDE_LIBRO")) {
            model.addAttribute("listComentarios",
                    libroService.getAllComentariosByIdLibros(comentarioForm.getIdLibro()));
            return "libro/libro :: comentarios";
        } else {
            model.addAttribute("comentarios", comentarioService.getComentarios());
            return "usuario/mis-comentarios :: table-comentarios";

        }
    }

}

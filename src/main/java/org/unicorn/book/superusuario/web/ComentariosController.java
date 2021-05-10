package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.unicorn.book.superusuario.filter.ComentarioFilter;
import org.unicorn.book.superusuario.service.ComentariosService;
import org.unicorn.book.superusuario.service.ProductosService;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/comentarios")
public class ComentariosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ComentariosController.class);
    private static final String ATTR_LISTADO_COMENTARIO = "listadoComentarios";
    private static final String ATTR_COMENTARIO = "comentario";

    private final ComentariosService comentariosService;

    /**
     * Constructor
     *
     * @param comentariosService el servicio de comentarios {@link ProductosService}
     */
    public ComentariosController(ComentariosService comentariosService) {
        this.comentariosService = comentariosService;
    }

    @ModelAttribute(name = "filtro")
    public ComentarioFilter getFiltroComentarios() {
        return new ComentarioFilter();
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-comentarios";
    }

    @GetMapping
    public String getConsolaComentariosView(ModelMap model, @ModelAttribute("filtro") ComentarioFilter filter,
            @PageableDefault(sort = "fechaComentario", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        LOGGER.info("Accediendo a la vista principal de administración de comentarios y valoraciones");
        model.addAttribute(ATTR_LISTADO_COMENTARIO, comentariosService.getAllComentarioByFilter(filter, pageable));
        return "/admin/comentarios";
    }

    @GetMapping(value = "/actualizar-estado")
    public String actualizaEstadoComentario(ModelMap model, @RequestParam("idLibro") Long idLibro,
            @RequestParam("idUsuario") Long idUsuario, @RequestParam("idEstado") Long idEstado) {
        model.addAttribute(ATTR_COMENTARIO,
                comentariosService.actualizarEstadoComentario(idLibro, idUsuario, idEstado));
        return "/admin/comentarios :: comentario";
    }
}

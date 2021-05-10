package org.unicorn.book.superusuario.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.unicorn.book.libreria.dto.LibroDto;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.filter.LibroFilter;
import org.unicorn.book.libreria.service.LibroService;
import org.unicorn.book.superusuario.service.ProductosService;

import java.util.List;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/productos")
public class ProductosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProductosController.class);

    private final LibroService libroService;
    private final ProductosService productosService;

    /**
     * Constructor
     *
     * @param libroService     servicio de libros {@link LibroService}
     * @param productosService servicio de productos {@link ProductosService}
     */
    public ProductosController(LibroService libroService, ProductosService productosService) {
        this.libroService = libroService;
        this.productosService = productosService;
    }

    @ModelAttribute(name = ACTIVE_PAGE)
    public String getActivePage() {
        return "consola-productos";
    }

    @ModelAttribute("filtro")
    public LibroFilter filtro() {
        return new LibroFilter();
    }

    @ModelAttribute("listAutores")
    public List<MaestroView> autores() {
        return libroService.getAllAutores();
    }

    @ModelAttribute("listTematicas")
    public List<MaestroView> tematicas() {
        return libroService.getAllTematicas();
    }

    @ModelAttribute("listColecciones")
    public List<MaestroView> colecciones() {
        return libroService.getAllColecciones();
    }

    @ModelAttribute("listEditoriales")
    public List<MaestroView> editoriales() {
        return libroService.getAllEditoriales();
    }

    @GetMapping
    public String getConsolaProductosView(ModelMap model, @ModelAttribute("filtro") LibroFilter filter,
            @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 20) Pageable pageable) {
        LOGGER.info("Accediendo a la vista principal de administración de productos");
        if (!ObjectUtils.isEmpty(filter.getOrden())) {
            Sort.Direction d = StringUtils.isEmpty(filter.getDireccion()) || filter.getDireccion().equals("asc") ?
                    Sort.Direction.ASC :
                    Sort.Direction.DESC;
            int page = filter.getPage() == null ? 0 : filter.getPage();
            pageable = PageRequest.of(page, 20, d, filter.getOrden());
        }
        Page<LibroDto> libros = libroService.findLibros(filter, pageable);
        model.addAttribute("listadoLibros", libros);
        model.addAttribute("precioMinimo", libroService.getMinimoPrecio());
        model.addAttribute("precioMaximo", libroService.getMaximoPrecio());
        model.addAttribute("activeSubPage", "consola-productos-consultas");
        return "/admin/productos";
    }

    @GetMapping("/edicion")
    public String getConsolaProductosEdicionView(ModelMap model,
            @RequestParam(value = "idLibro", required = false) Long idLibro) {
        model.addAttribute("activeSubPage", "consola-productos-edicion");
        return "/admin/new-edit-producto";
    }
}

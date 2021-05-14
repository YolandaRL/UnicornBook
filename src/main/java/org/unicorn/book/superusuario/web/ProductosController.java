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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.unicorn.book.aplicacion.service.ImagenService;
import org.unicorn.book.libreria.dto.LibroDto;
import org.unicorn.book.libreria.dto.MaestroView;
import org.unicorn.book.libreria.filter.LibroFilter;
import org.unicorn.book.libreria.service.LibroService;
import org.unicorn.book.superusuario.dto.ProductoForm;
import org.unicorn.book.superusuario.exception.ISBNDuplicadoException;
import org.unicorn.book.superusuario.exception.ProductoAsociadoCarritoException;
import org.unicorn.book.superusuario.exception.ProductoAsociadoCompraException;
import org.unicorn.book.superusuario.service.ProductosService;

import javax.validation.Valid;
import java.util.List;

import static org.unicorn.book.superusuario.web.ConsolaController.ACTIVE_PAGE;

@Controller
@RequestMapping("/consola/productos")
public class ProductosController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProductosController.class);

    private final LibroService libroService;
    private final ProductosService productosService;
    private final ImagenService imagenService;

    /**
     * Constructor
     *
     * @param libroService     servicio de libros {@link LibroService}
     * @param productosService servicio de productos {@link ProductosService}
     * @param imagenService    servicio de imagenes {@link ImagenService}
     */
    public ProductosController(LibroService libroService, ProductosService productosService,
            ImagenService imagenService) {
        this.libroService = libroService;
        this.productosService = productosService;
        this.imagenService = imagenService;
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

    @GetMapping(value = { "/edicion", "/edicion/{idLibro}" })
    public String getConsolaProductosEdicionView(ModelMap model,
            @PathVariable(name = "idLibro", required = false) Long idLibro) {
        LOGGER.info("Accediendo a la vista de alta, baja y edición de la administración de productos");
        model.addAttribute("activeSubPage", "consola-productos-edicion");
        model.addAttribute("productoForm", productosService.getFormularioEdicion(idLibro));
        return "/admin/new-edit-producto";
    }

    @GetMapping("/eliminar/{idLibro}")
    public String getConsolaProductosEliminarView(ModelMap model, @PathVariable("idLibro") Long idLibro,
            RedirectAttributes ra) {
        LOGGER.info("Petición de eliminación completa de producto");
        ra.addFlashAttribute("activeSubPage", "consola-productos-edicion");
        try {
            productosService.eliminarLibro(idLibro);
            ra.addFlashAttribute("exito", "El libro se ha eliminado correctamente");
            return "redirect:/consola/productos/edicion";

        } catch (ProductoAsociadoCarritoException e) {
            ra.addFlashAttribute("error",
                    "El producto que intenta eliminar está en la cesta de la compra de un usuario");

        } catch (ProductoAsociadoCompraException e) {
            ra.addFlashAttribute("error",
                    "El producto que intenta eliminar está asociado a compras de usuario. Puede deshabilitar su visualización haciendolo no visible");
        }
        return "redirect:/consola/productos/edicion/" + idLibro;
    }

    @PostMapping("/edicion")
    public String postConsolaProductosEdicionView(@Valid @ModelAttribute("productoForm") ProductoForm productoForm,
            BindingResult result, ModelMap model, RedirectAttributes ra) {
        LOGGER.info("Petición de guardado de un producto");
        model.addAttribute("activeSubPage", "consola-productos-edicion");
        if (result.hasErrors()) {
            model.addAttribute("error", "Complete los campos obligatorios marcados en el formulacio");
        } else {
            LOGGER.warn("Error validando del formulario del producto, se devuelve el formulario con los errores");
            try {
                productoForm = productosService.saveUpdateLibro(productoForm);
                ra.addFlashAttribute("exito", "El libro se ha guardado correctamente");
                return "redirect:/consola/productos/edicion/" + productoForm.getId();
            } catch (ISBNDuplicadoException e) {
                model.addAttribute("error", "El ISBN indicado ya está asociado a otro producto");
            }
        }
        imagenService.cargarDataBase64(productoForm.getImagenForm());
        return "/admin/new-edit-producto";
    }
}

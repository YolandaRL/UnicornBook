package org.unicorn.book.inicio.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.unicorn.book.libreria.dto.LibroView;
import org.unicorn.book.libreria.service.LibroService;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class InicioController {

    private final LibroService libroService;

    public InicioController(LibroService libroService) {
        this.libroService = libroService;
    }

    @GetMapping("/")
    public String getPortada(ModelMap model, HttpSession request) {
        List<LibroView> muestras = libroService.getMuestraLibros();
        model.addAttribute("listNovedades", libroService.getNovedades());
        model.addAttribute("listMuestreo", muestras);
        model.addAttribute("listComentarios",
                libroService.getAllComentariosByIdLibros(muestras.stream().map(LibroView::getId).toArray(Long[]::new)));
        return "index";
    }

    @GetMapping("/image/{fileName}")
    public void getImagePortada(@PathVariable("fileName") String fileName, HttpServletResponse response)
            throws IOException {
        File initialFile = new File("/Users/pablo/Desktop/unicornbook_images/" + fileName + ".gif");
        InputStream targetStream = new FileInputStream(initialFile);
        StreamUtils.copy(targetStream, response.getOutputStream());
    }

}

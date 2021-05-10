package org.unicorn.book.configuracion.advisors;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.unicorn.book.aplicacion.dto.EstadoView;
import org.unicorn.book.aplicacion.enums.ComponenteEnum;
import org.unicorn.book.aplicacion.respository.EstadoRepository;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.usuario.service.CestaService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@ControllerAdvice
public class GlobalControllerAdvisor {

    private final CestaService cestaService;
    private final EstadoRepository estadoRepository;

    public GlobalControllerAdvisor(CestaService cestaService, EstadoRepository estadoRepository) {
        this.cestaService = cestaService;
        this.estadoRepository = estadoRepository;
    }

    @InitBinder
    public void binder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("dd-MM-yyyy"), true));
    }

    @ModelAttribute("estadosComentario")
    private List<EstadoView> estadoComentario() {
        return estadoRepository.findAllByComponenteId(ComponenteEnum.COMENTARIO.getId());
    }

    @ModelAttribute("countCarrito")
    public Integer countLibrosCarrito() {
        if (!ObjectUtils.isEmpty(AutenticacionUtils.getIdUsuario())) {
            return cestaService.countCarrito();
        }
        return 0;
    }

}

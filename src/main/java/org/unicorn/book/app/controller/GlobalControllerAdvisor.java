package org.unicorn.book.app.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.unicorn.book.app.usuario.service.CestaService;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

@ControllerAdvice
public class GlobalControllerAdvisor {

    private final CestaService cestaService;

    public GlobalControllerAdvisor(CestaService cestaService) {
        this.cestaService = cestaService;
    }


    @InitBinder
    public void binder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("dd-MM-yyyy"), true));
    }

    @ModelAttribute("countCarrito")
    public Integer countLibrosCarrito() {
        if (!ObjectUtils.isEmpty(AuthenticationUtils.getIdUsuario())) {
            return cestaService.countCarrito();
        }
        return 0;
    }

}

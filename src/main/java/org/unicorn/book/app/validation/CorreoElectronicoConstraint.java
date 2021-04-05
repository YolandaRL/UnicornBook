package org.unicorn.book.app.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Valid;

public class CorreoElectronicoConstraint implements ConstraintValidator<CorreoElectronico, String> {

    @Override
    public void initialize(@Valid CorreoElectronico constraintAnnotation) {
        // Non fai nada
    }

    public boolean isValid(String correo, ConstraintValidatorContext constraintContext) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(correo);
        return m.matches();
    }

}

package org.unicorn.book.configuracion.validation;

import org.springframework.util.StringUtils;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Valid;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Constraint par ala validación de correos electrónicos
 */
public class NifNieConstraint implements ConstraintValidator<NifNie, String> {

    @Override
    public void initialize(@Valid NifNie constraintAnnotation) {
        // Non fai nada
    }

    /**
     * Determina si es un nif o nie y lo valida si un dni es valido
     *
     * @param nifnie            el dni {@link String}
     * @param constraintContext el validador de contexto {@link ConstraintValidatorContext}
     * @return el resultado de la operación
     */
    public boolean isValid(String nifnie, ConstraintValidatorContext constraintContext) {
        if (!StringUtils.isEmpty(nifnie)) {
            nifnie = nifnie.toUpperCase();
            if (nifnie.startsWith("X") || nifnie.startsWith("Y") || nifnie.startsWith("Z")) {
                String caracteresNie = "XYZ";
                String modificadorNie = String.valueOf(caracteresNie.indexOf(nifnie.substring(0, 1)));
                return validate(nifnie.substring(1), modificadorNie);
            } else {
                return validate(nifnie, "");
            }
        }
        return true;
    }

    /**
     * Valida el nif
     *
     * @param nif            el dni {@link String}
     * @param modificadorNie la letra que modificar al inicio de la cadena para convertirlo en nif @{link String}
     * @return el resultado de la operación
     */
    private boolean validate(String nif, String modificadorNie) {
        Pattern nifPattern = Pattern.compile("(\\d{1,8})([TRWAGMYFPDXBNJZSQVHLCKE])");
        Matcher m = nifPattern.matcher(nif);
        if (m.matches()) {
            String letra = m.group(2);
            String letras = "TRWAGMYFPDXBNJZSQVHLCKE";
            int dni = StringUtils.isEmpty(modificadorNie) ?
                    Integer.parseInt(m.group(1)) :
                    Integer.parseInt(modificadorNie.concat(m.group(1)));
            dni = dni % 23;
            String reference = letras.substring(dni, dni + 1);

            return reference.equalsIgnoreCase(letra);
        } else {
            return false;
        }
    }

}

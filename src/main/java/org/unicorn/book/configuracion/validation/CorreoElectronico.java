package org.unicorn.book.configuracion.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Target({ METHOD, FIELD, ANNOTATION_TYPE })
@Retention(RUNTIME)
@Constraint(validatedBy = CorreoElectronicoConstraint.class)
@Documented
public @interface CorreoElectronico {

    String message() default "El correo electrónico no es válido";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}

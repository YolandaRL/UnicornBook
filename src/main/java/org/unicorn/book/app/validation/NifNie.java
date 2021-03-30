package org.unicorn.book.app.validation;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Target( { METHOD, FIELD, ANNOTATION_TYPE })
@Retention(RUNTIME)
@Constraint(validatedBy = NifNieConstraint.class)
@NotEmpty(message = "ERROR_VACIO")
@Documented
public @interface NifNie {

    String message() default "DNI ou NIF non válidos";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}

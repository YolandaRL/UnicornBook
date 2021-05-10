package org.unicorn.book.configuracion.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { CustomScriptAssertConstraint.class })
@Documented
public @interface CustomScriptAssert {
    String message() default "{org.hibernate.validator.constraints.ScriptAssert.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    String lang();

    String script();

    String alias() default "_this";

    String field();

    @Target({ ElementType.TYPE })
    @Retention(RetentionPolicy.RUNTIME)
    @Documented
    @interface List {
        CustomScriptAssert[] value();
    }
}

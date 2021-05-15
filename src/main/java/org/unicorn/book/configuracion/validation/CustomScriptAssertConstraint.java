package org.unicorn.book.configuracion.validation;

import org.hibernate.validator.internal.util.Contracts;
import org.hibernate.validator.internal.util.logging.Messages;
import org.springframework.stereotype.Component;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * Valida una expresión en formato javascript
 */
@Component
public class CustomScriptAssertConstraint implements ConstraintValidator<CustomScriptAssert, Object> {
    private String script;
    private String languageName;
    private String alias;
    private String field;
    private String message;

    /**
     * Constructor
     */
    public CustomScriptAssertConstraint() {
        //N/A
    }

    @Override
    public void initialize(CustomScriptAssert customScriptAssert) {
        this.validateParameters(customScriptAssert);
        this.script = customScriptAssert.script();
        this.languageName = customScriptAssert.lang();
        this.alias = customScriptAssert.alias();
        this.field = customScriptAssert.field();
        this.message = customScriptAssert.message();
    }

    /**
     * Realiza la validación
     *
     * @param value                      el valor a validar {@link Object}
     * @param constraintValidatorContext {@link ConstraintValidatorContext}
     * @return el resutlado
     */
    public boolean isValid(Object value, ConstraintValidatorContext constraintValidatorContext) {
        constraintValidatorContext.disableDefaultConstraintViolation();
        constraintValidatorContext.buildConstraintViolationWithTemplate(message).addNode(field)
                .addConstraintViolation();

        Object evaluationResult;
        try {
            ScriptEngine engine = new ScriptEngineManager().getEngineByName(this.languageName);
            engine.put(this.alias, value);
            evaluationResult = engine.eval(this.script);
        } catch (ScriptException var6) {
            return false;
        }

        if (evaluationResult == null) {
            return false;
        } else if (!(evaluationResult instanceof Boolean)) {
            return false;
        } else {
            return Boolean.TRUE.equals(evaluationResult);
        }

    }

    /**
     * Valida que los parametros obligatorios estén informados
     *
     * @param constraintAnnotation las constraint {@link CustomScriptAssert}
     */
    private void validateParameters(CustomScriptAssert constraintAnnotation) {
        Contracts.assertNotEmpty(constraintAnnotation.script(), Messages.MESSAGES.parameterMustNotBeEmpty("script"));
        Contracts.assertNotEmpty(constraintAnnotation.lang(), Messages.MESSAGES.parameterMustNotBeEmpty("lang"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("alias"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("field"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("message"));

    }
}

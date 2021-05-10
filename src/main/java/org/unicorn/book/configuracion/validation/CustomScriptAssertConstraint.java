package org.unicorn.book.configuracion.validation;

import org.hibernate.validator.internal.util.Contracts;
import org.hibernate.validator.internal.util.logging.Messages;
import org.springframework.stereotype.Component;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class CustomScriptAssertConstraint implements ConstraintValidator<CustomScriptAssert, Object> {
    //private static final Log LOGGER = LoggerFactory.make();
    private String script;
    private String languageName;
    private String alias;
    private String field;
    private String message;

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
            //throw LOGGER.getErrorDuringScriptExecutionException(this.script, var6);
        }

        if (evaluationResult == null) {
            return false;
            //throw LOGGER.getScriptMustReturnTrueOrFalseException(this.script);
        } else if (!(evaluationResult instanceof Boolean)) {
            return false;
            //throw LOGGER.getScriptMustReturnTrueOrFalseException(this.script, evaluationResult,evaluationResult.getClass().getCanonicalName());
        } else {
            return Boolean.TRUE.equals(evaluationResult);
        }

    }

    private void validateParameters(
            CustomScriptAssert constraintAnnotation) {
        Contracts.assertNotEmpty(constraintAnnotation.script(), Messages.MESSAGES.parameterMustNotBeEmpty("script"));
        Contracts.assertNotEmpty(constraintAnnotation.lang(), Messages.MESSAGES.parameterMustNotBeEmpty("lang"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("alias"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("field"));
        Contracts.assertNotEmpty(constraintAnnotation.alias(), Messages.MESSAGES.parameterMustNotBeEmpty("message"));

    }
}

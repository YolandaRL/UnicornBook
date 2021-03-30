package org.unicorn.book.app.usuario.exception;

/**
 *
 */
public class EmailDuplicatedException extends Exception {

    public EmailDuplicatedException(String message) {
        super(message);
    }

    public EmailDuplicatedException(String message, Throwable cause) {
        super(message, cause);
    }
}

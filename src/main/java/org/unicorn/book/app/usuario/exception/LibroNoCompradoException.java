package org.unicorn.book.app.usuario.exception;

/**
 *
 */
public class LibroNoCompradoException extends Exception {

    public LibroNoCompradoException(String message) {
        super(message);
    }

    public LibroNoCompradoException(String message, Throwable cause) {
        super(message, cause);
    }
}

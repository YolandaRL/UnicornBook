package org.unicorn.book.usuario.exception;

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

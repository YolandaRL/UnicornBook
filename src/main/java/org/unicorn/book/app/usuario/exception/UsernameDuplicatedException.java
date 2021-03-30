package org.unicorn.book.app.usuario.exception;

/**
 *
 */
public class UsernameDuplicatedException extends Exception {
        public UsernameDuplicatedException(String message) {
            super(message);
        }

        public UsernameDuplicatedException(String message, Throwable cause) {
            super(message, cause);
        }
}

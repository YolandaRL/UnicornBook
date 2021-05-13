package org.unicorn.book;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Clase principal que inicia la aplicación
 */
@SpringBootApplication
public class BookApplication {

    /**
     * Inicia la aplicación de Unicorn Book
     *
     * @param args argumentos si fuera necesario. Por ahora no recibe argumento {@link String[]}
     */
    public static void main(String[] args) {
        SpringApplication.run(BookApplication.class, args);
    }

}

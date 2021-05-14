package org.unicorn.book.configuracion;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.FileSystemResource;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Configuration
public class ExternalConfiguration {

    private static final Logger LOGGER = LoggerFactory.getLogger(ExternalConfiguration.class);

    @Bean
    public static PropertySourcesPlaceholderConfigurer cargaPropertiesConfig() {
        final String propetiesFile = String.format("%s/application.properties", System.getProperty("app_config_path"));
        try (InputStream in = new FileInputStream(propetiesFile)) {
            LOGGER.info("Cargando propiedades externas desde {}: {}", propetiesFile, in.hashCode());
        } catch (IOException e) {
            LOGGER.warn(
                    "Cargando fichero por defecto de propiedades classpath:/application.properties. " + "Esto puede ser un problema con la conexión a la base de datos",
                    e);
        }

        PropertySourcesPlaceholderConfigurer properties = new PropertySourcesPlaceholderConfigurer();
        properties.setLocation(new FileSystemResource(propetiesFile));
        properties.setIgnoreResourceNotFound(true);
        properties.setLocalOverride(true);
        return properties;
    }

    private void cargaLogConfig(String path) {

    }
}

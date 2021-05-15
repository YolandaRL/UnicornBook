package org.unicorn.book.aplicacion.service;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.aplicacion.dto.ImagenForm;
import org.unicorn.book.configuracion.handlers.LogTimesInterceptor;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import javax.xml.bind.DatatypeConverter;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

/**
 * Implementa las operaciones disponibles con imagenes
 */
@Service
public class ImagenServiceImpl implements ImagenService {
    private static final Logger LOGGER = LoggerFactory.getLogger(LogTimesInterceptor.class);

    /**
     * Constructor
     */
    public ImagenServiceImpl() {
    }

    @Override
    public void cargarDataBase64(ImagenForm imagenForm) {
        if (!imagenForm.getImagen().isEmpty()) {
            final String extension = FilenameUtils.getExtension(imagenForm.getImagen().getOriginalFilename());
            if (extension != null) {
                try {
                    BASE64Encoder base64Encoder = new BASE64Encoder();
                    BufferedImage bi = ImageIO.read(new ByteArrayInputStream(imagenForm.getImagen().getBytes()));
                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    ImageIO.write(bi, extension, baos);

                    imagenForm.setDataBase64(String.format("data:image/%s;base64,%s", extension,
                            base64Encoder.encode(baos.toByteArray())));
                    imagenForm.setExtension(extension);
                } catch (IOException e) {
                    LOGGER.error("Error obteniendo los bytes de la imagen cargada", e);
                }
            }
        }
    }

    @Override
    public String saveOrUpdateImagen(ImagenForm imagenForm) {
        String fileName = null;
        if (!imagenForm.getImagen().isEmpty()) {
            final String extension = FilenameUtils.getExtension(imagenForm.getImagen().getOriginalFilename());
            fileName = String.format("%s.%s", getUuid(), extension);
            try {
                this.createImagenAndDeleteLast(imagenForm.getImagen().getBytes(), fileName, imagenForm.getNombre());
            } catch (IOException e) {
                LOGGER.error("Error obteniendo los bytes de la imagen cargada", e);
            }
        } else if (!ObjectUtils.isEmpty(imagenForm.getDataBase64())) {
            fileName = String.format("%s.%s", getUuid(), imagenForm.getExtension());
            this.createImagenAndDeleteLast(
                    DatatypeConverter.parseBase64Binary(imagenForm.getDataBase64().split(",")[1]), fileName,
                    imagenForm.getNombre());
        }
        return fileName;
    }

    @Override
    public void deleteImagen(String fileName) {
        if (!ObjectUtils.isEmpty(fileName)) {
            Path fileToDeletePath = Paths
                    .get(String.format("%s/portadas/%s", System.getProperty("app_resources_path"), fileName));
            try {
                Files.delete(fileToDeletePath);
            } catch (IOException e) {
                LOGGER.error("Error eliminando la imagen", e);

            }
        }
    }

    /**
     * Crea una nueva imagen en el path de recursos locales y elimina el fichero antiguo
     *
     * @param bytes        los bytes de la imagen {@link Byte[]}
     * @param fileName     el nombre del fichero a guardar {@link String}
     * @param lastFileName el nombre del fichero antiguo {@link String}
     */
    private void createImagenAndDeleteLast(byte[] bytes, String fileName, String lastFileName) {
        Path filepath = Paths.get(String.format("%s/portadas/%s/", System.getProperty("app_resources_path"), fileName));
        try (OutputStream os = Files.newOutputStream(filepath)) {
            os.write(bytes);
            os.flush();
            this.deleteImagen(lastFileName);
        } catch (IOException e) {
            LOGGER.error("Error obteniendo los bytes de la imagen cargada", e);
        }
    }

    /**
     * Genera un identificador único par ael guardado de la imagen
     *
     * @return el identificador único {@link String}
     */
    private String getUuid() {
        return UUID.randomUUID().toString();
    }
}

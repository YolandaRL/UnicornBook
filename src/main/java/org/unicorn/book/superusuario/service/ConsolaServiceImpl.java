package org.unicorn.book.superusuario.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.usuario.model.DetalleCompra;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Implementa las operaciones disponibles que tiene el administrador para obtener estadisticas rapidas de la librería web
 */
@Service
@Transactional(readOnly = true)
public class ConsolaServiceImpl implements ConsolaService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ConsolaServiceImpl.class);

    private final DetalleCompraRepository detalleCompraRepository;

    /**
     * Constructor
     *
     * @param detalleCompraRepository el repositorio de los detalles de compras {@link DetalleCompraRepository}
     */
    public ConsolaServiceImpl(DetalleCompraRepository detalleCompraRepository) {
        this.detalleCompraRepository = detalleCompraRepository;
    }

    @Override
    public String getGraficaPedidos() {
        Map<Date, Integer> mapa = new HashMap<>();

        Calendar c = Calendar.getInstance();
        c.setTime(new Date());
        int diaActual = c.get(Calendar.DAY_OF_MONTH);
        int mesActual = c.get(Calendar.MONTH);
        int anoActual = c.get(Calendar.YEAR);

        for (int i = 0; i <= 30; i++) {
            Date fechaDesde = new GregorianCalendar(anoActual, mesActual, diaActual - i, 0, 0).getTime();
            Date fechaHasta = new GregorianCalendar(anoActual, mesActual, diaActual - i, 23, 59).getTime();

            int ingresos = 0;
            List<DetalleCompra> compras = detalleCompraRepository
                    .findAllByCompraFechaCompraBetween(fechaDesde, fechaHasta);
            if (compras != null) {
                for (DetalleCompra compra : compras) {
                    ingresos = ingresos + compra.getCantidad() * Math.round(compra.getLibro().getPrecio());
                }
            }
            mapa.put(fechaDesde, ingresos);
        }
        try {
            return new ObjectMapper().writeValueAsString(mapa.entrySet().stream().sorted(Map.Entry.comparingByKey())
                    .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (oldValue, newValue) -> oldValue,
                            LinkedHashMap::new)));
        } catch (JsonProcessingException e) {
            LOGGER.error("Erro convirtiendo el mapa con las estadisticas de ingresos a JSON", e);
            return "{}";
        }
    }
}

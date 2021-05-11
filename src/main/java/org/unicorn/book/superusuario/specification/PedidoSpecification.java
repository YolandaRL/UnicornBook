package org.unicorn.book.superusuario.specification;

import org.springframework.data.jpa.domain.Specification;
import org.unicorn.book.superusuario.filter.PedidoFilter;
import org.unicorn.book.usuario.model.DetalleCompra;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Define las reglas para el filtrado de pedidos
 */
public class PedidoSpecification implements Specification<DetalleCompra> {

    private static final long serialVersionUID = -8724029767578011754L;

    private final PedidoFilter filter;
    private final List<Predicate> predicates = new ArrayList<>();

    public PedidoSpecification(PedidoFilter filter) {
        this.filter = filter;
    }

    @Override
    public Predicate toPredicate(Root<DetalleCompra> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        // Sin implementación

        return cb.and(predicates.toArray(new Predicate[] {}));
    }
}

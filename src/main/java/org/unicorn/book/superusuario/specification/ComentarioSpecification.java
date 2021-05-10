package org.unicorn.book.superusuario.specification;

import org.springframework.data.jpa.domain.Specification;
import org.unicorn.book.libreria.model.Comentario;
import org.unicorn.book.superusuario.filter.ComentarioFilter;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Define las reglas para el filtrado de comentarios
 */
public class ComentarioSpecification implements Specification<Comentario> {

    private static final long serialVersionUID = -8724029767578011754L;

    private final ComentarioFilter filter;
    private final List<Predicate> predicates = new ArrayList<>();

    public ComentarioSpecification(ComentarioFilter filter) {
        this.filter = filter;
    }

    @Override
    public Predicate toPredicate(Root<Comentario> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        if (!filter.getEstados().isEmpty()) {
            predicates.add(root.get("estado").get("id").in(filter.getEstados()));
        }
        return cb.and(predicates.toArray(new Predicate[] {}));
    }
}

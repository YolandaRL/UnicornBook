package org.unicorn.book.superusuario.specification;

import org.springframework.data.jpa.domain.Specification;
import org.unicorn.book.superusuario.filter.ClienteFilter;
import org.unicorn.book.usuario.model.Usuario;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Define las reglas para el filtrado de clientes
 */
public class ClienteSpecification implements Specification<Usuario> {

    private static final long serialVersionUID = -8724029767578011754L;

    private final ClienteFilter filter;
    private final List<Predicate> predicates = new ArrayList<>();

    public ClienteSpecification(ClienteFilter filter) {
        this.filter = filter;
    }

    @Override
    public Predicate toPredicate(Root<Usuario> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        // Sin implementación
        return cb.and(predicates.toArray(new Predicate[] {}));
    }
}

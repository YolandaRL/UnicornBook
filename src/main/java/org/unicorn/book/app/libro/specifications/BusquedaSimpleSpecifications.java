package org.unicorn.book.app.libro.specifications;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;
import org.unicorn.book.app.libro.model.Libro;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class BusquedaSimpleSpecifications implements Specification<Libro> {

    public static final String PERCENT = "%";
    private final BusquedaSimpleFilter filter;
    private final List<Predicate> predicates = new ArrayList<>();

    public BusquedaSimpleSpecifications(BusquedaSimpleFilter filter) {
        this.filter = filter;
    }

    @Override
    public Predicate toPredicate(Root<Libro> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

        if (!ObjectUtils.isEmpty(filter.getTermino())) {

            Expression<String> autorPath = cb.lower(root.get("autor").get("nombre").as(String.class));
            String autorLike = PERCENT.concat(filter.getTermino().toLowerCase()).concat(PERCENT);

            Expression<String> tituloPath = cb.lower(root.get("titulo").as(String.class));
            String tituloLike = PERCENT.concat(filter.getTermino().toLowerCase()).concat(PERCENT);

            Expression<String> isbPath = cb.lower(root.get("isbn").as(String.class));
            String isbnLike = PERCENT.concat(filter.getTermino().toLowerCase()).concat(PERCENT);

            predicates.add(cb.or(cb.like(autorPath, autorLike), cb.like(tituloPath, tituloLike),
                    cb.like(isbPath, isbnLike)));
        }

        return cb.and(predicates.toArray(new Predicate[] {}));
    }
}

package org.unicorn.book.app.libro.specifications;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.app.libro.filter.BusquedaSimpleFilter;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.libro.model.LibroAutor;
import org.unicorn.book.app.libro.model.LibroColeccion;
import org.unicorn.book.app.libro.model.LibroTematica;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
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

        if (!filter.getAutores().isEmpty()) {
            final Join<Libro, LibroAutor> join = root.join("autor", JoinType.INNER);
            predicates.add(join.get("id").in(new ArrayList<>(filter.getAutores())));
        }

        if (!filter.getColecciones().isEmpty()) {
            final Join<Libro, LibroColeccion> join = root.join("coleccion", JoinType.INNER);
            predicates.add(join.get("id").in(new ArrayList<>(filter.getColecciones())));
        }

        if (!filter.getTematicas().isEmpty()) {
            final Join<Libro, LibroTematica> join = root.join("tematicas", JoinType.INNER);
            predicates.add(join.get("id").in(new ArrayList<>(filter.getTematicas())));
        }

        if (!filter.getEditoriales().isEmpty()) {
            predicates.add(root.get("editorial").get("id").in(new ArrayList<>(filter.getEditoriales())));
        }

        return cb.and(predicates.toArray(new Predicate[] {}));
    }
}

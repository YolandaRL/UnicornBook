package org.unicorn.book.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.aplicacion.model.Estado;
import org.unicorn.book.autenticacion.AutenticacionUtils;
import org.unicorn.book.libreria.model.Comentario;
import org.unicorn.book.libreria.model.ComentarioPk;
import org.unicorn.book.libreria.model.Libro;
import org.unicorn.book.libreria.repository.ComentarioRepository;
import org.unicorn.book.usuario.dto.ComentarioForm;
import org.unicorn.book.usuario.dto.ComentarioView;
import org.unicorn.book.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.usuario.exception.LibroYaComentadoException;
import org.unicorn.book.usuario.model.DetalleCompra;
import org.unicorn.book.usuario.model.Usuario;
import org.unicorn.book.usuario.repository.DetalleCompraRepository;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class ComentarioServiceImpl implements ComentarioService {

    private final ComentarioRepository comentarioRepository;
    private final DetalleCompraRepository detalleCompraRepository;
    private final EntityManager entityManager;

    public ComentarioServiceImpl(ComentarioRepository comentarioRepository,
            DetalleCompraRepository detalleCompraRepository, EntityManager entityManager) {
        this.comentarioRepository = comentarioRepository;
        this.detalleCompraRepository = detalleCompraRepository;
        this.entityManager = entityManager;
    }

    @Override
    public List<ComentarioView> getComentarios() {
        return comentarioRepository.findAllByUsuarioId(AutenticacionUtils.getIdUsuario());
    }

    @Override
    @Transactional
    public void nuevoComentario(ComentarioForm comentarioForm)
            throws LibroYaComentadoException, LibroNoCompradoException {
        this.checkLibroComprado(comentarioForm.getIdLibro());
        this.checkComentarioNoExiste(comentarioForm.getIdLibro());
        ComentarioPk pk = new ComentarioPk();
        pk.setIdLibro(comentarioForm.getIdLibro());
        pk.setIdUsuario(AutenticacionUtils.getIdUsuario());
        Comentario comentario = new Comentario();
        comentario.setPk(pk);
        comentario.setLibro(entityManager.getReference(Libro.class, comentarioForm.getIdLibro()));
        comentario.setUsuario(entityManager.getReference(Usuario.class, AutenticacionUtils.getIdUsuario()));
        comentario.setFechaComentario(new Date());
        comentario.setTextoComentario(comentarioForm.getComentario());
        comentario.setEstrellas(comentarioForm.getEstrellas());
        comentario.setAnonimo(Boolean.TRUE.equals(comentarioForm.getAnonimo()));
        comentario.setEstado(entityManager.getReference(Estado.class, 1L));
        comentarioRepository.save(comentario);
    }

    @Override
    public ComentarioForm getComentarioForm(Long idLibro) {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(idLibro, AutenticacionUtils.getIdUsuario());
        ComentarioForm form = new ComentarioForm();
        form.setComentario(comentario.getTextoComentario());
        form.setAnonimo(comentario.isAnonimo());
        form.setEstrellas(comentario.getEstrellas());
        form.setIdLibro(comentario.getLibro().getId());
        return form;
    }

    @Override
    @Transactional
    public void editarComentario(ComentarioForm comentarioForm) {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(comentarioForm.getIdLibro(), AutenticacionUtils.getIdUsuario());
        comentario.setTextoComentario(comentarioForm.getComentario());
        comentario.setEstrellas(comentarioForm.getEstrellas());
        comentario.setEstado(entityManager.getReference(Estado.class, 1L));
        comentario.setAnonimo(Boolean.TRUE.equals(comentarioForm.getAnonimo()));
        comentarioRepository.save(comentario);
    }

    @Override
    @Transactional
    public void eliminarComentario(Long idLibro) {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(idLibro, AutenticacionUtils.getIdUsuario());
        comentarioRepository.delete(comentario);
    }

    private void checkLibroComprado(Long idLibro) throws LibroNoCompradoException {
        DetalleCompra dt = detalleCompraRepository
                .getFirstByCompraUsuarioIdAndLibroId(AutenticacionUtils.getIdUsuario(), idLibro);
        if (ObjectUtils.isEmpty(dt)) {
            throw new LibroNoCompradoException("El usuario no ha comprado el libro");
        }
    }

    private void checkComentarioNoExiste(Long idLibro) throws LibroYaComentadoException {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(idLibro, AutenticacionUtils.getIdUsuario());
        if (!ObjectUtils.isEmpty(comentario)) {
            throw new LibroYaComentadoException("El usuario ya comentó el libro");
        }
    }
}

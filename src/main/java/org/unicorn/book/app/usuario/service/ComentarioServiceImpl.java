package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.unicorn.book.app.libro.model.Comentario;
import org.unicorn.book.app.libro.model.ComentarioPk;
import org.unicorn.book.app.libro.model.Libro;
import org.unicorn.book.app.libro.repository.ComentarioRepository;
import org.unicorn.book.app.model.Estado;
import org.unicorn.book.app.usuario.dto.ComentarioForm;
import org.unicorn.book.app.usuario.exception.LibroNoCompradoException;
import org.unicorn.book.app.usuario.exception.LibroYaComentadoException;
import org.unicorn.book.app.usuario.model.DetalleCompra;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.DetalleCompraRepository;
import org.unicorn.book.autenticacion.AuthenticationUtils;

import javax.persistence.EntityManager;
import java.util.Date;

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
    @Transactional
    public void nuevoComentario(ComentarioForm comentarioForm)
            throws LibroYaComentadoException, LibroNoCompradoException {
        this.checkLibroComprado(comentarioForm.getIdLibro());
        this.checkComentarioNoExiste(comentarioForm.getIdLibro());
        ComentarioPk pk = new ComentarioPk();
        pk.setIdLibro(comentarioForm.getIdLibro());
        pk.setIdUsuario(AuthenticationUtils.getIdUsuario());
        Comentario comentario = new Comentario();
        comentario.setPk(pk);
        comentario.setLibro(entityManager.getReference(Libro.class, comentarioForm.getIdLibro()));
        comentario.setUsuario(entityManager.getReference(Usuario.class, AuthenticationUtils.getIdUsuario()));
        comentario.setFechaComentario(new Date());
        comentario.setTextoComentario(comentarioForm.getComentario());
        comentario.setEstrellas(comentarioForm.getEstrellas());
        comentario.setAnonimo(Boolean.TRUE.equals(comentarioForm.getAnonimo()));
        comentario.setEstado(entityManager.getReference(Estado.class, 1L));
        comentarioRepository.save(comentario);
    }

    @Override
    public void editarComentario(ComentarioForm comentarioForm) {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(comentarioForm.getIdLibro(), AuthenticationUtils.getIdUsuario());
        comentario.setTextoComentario(comentarioForm.getComentario());
        comentario.setEstrellas(comentarioForm.getEstrellas());
        comentario.setEstado(entityManager.getReference(Estado.class, 1L));
        comentarioRepository.save(comentario);
    }

    @Override
    @Transactional
    public void eliminarComentario(Long idLibro) {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(idLibro, AuthenticationUtils.getIdUsuario());
        comentarioRepository.delete(comentario);
    }

    private void checkLibroComprado(Long idLibro) throws LibroNoCompradoException {
        DetalleCompra dt = detalleCompraRepository
                .getFirstByCompraUsuarioIdAndLibroId(AuthenticationUtils.getIdUsuario(), idLibro);
        if (ObjectUtils.isEmpty(dt)) {
            throw new LibroNoCompradoException("El usuario no ha comprado el libro");
        }
    }

    private void checkComentarioNoExiste(Long idLibro) throws LibroYaComentadoException {
        Comentario comentario = comentarioRepository
                .getFirstByLibroIdAndUsuarioId(idLibro, AuthenticationUtils.getIdUsuario());
        if (!ObjectUtils.isEmpty(comentario)) {
            throw new LibroYaComentadoException("El usuario ya comentó el libro");
        }
    }
}

package org.unicorn.book.pruebas;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.model.Rol;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.UsuarioRepository;
import org.unicorn.book.pruebas.dto.RegistroForm;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserService {

    private final UsuarioRepository usuarioRepository;
    private final EntityManager entityManager;
    private final PasswordEncoder pass;

    public UserService(UsuarioRepository usuarioRepository, EntityManager entityManager, PasswordEncoder pass) {
        this.usuarioRepository = usuarioRepository;
        this.entityManager = entityManager;
        this.pass = pass;
    }

    public void registro(RegistroForm registroForm) {
        Usuario u = new Usuario();
        u.setNombre(registroForm.getNombre());
        u.setApellido1(registroForm.getApellido1());
        u.setApellido2(registroForm.getApellido2());
        u.setEmail(registroForm.getCorreo());
        u.setUsuario(registroForm.getUsuario());
        u.setPassword(pass.encode(registroForm.getContrasena()));
        List<Rol> roles = new ArrayList<>();
        roles.add(entityManager.getReference(Rol.class, 3L));
        u.setRoles(roles);
        usuarioRepository.saveAndFlush(u);
    }
}

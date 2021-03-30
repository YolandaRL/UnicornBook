package org.unicorn.book.app.usuario.service;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.app.usuario.exception.EmailDuplicatedException;
import org.unicorn.book.app.usuario.exception.UsernameDuplicatedException;
import org.unicorn.book.app.usuario.model.Rol;
import org.unicorn.book.app.usuario.model.Usuario;
import org.unicorn.book.app.usuario.repository.UsuarioRepository;
import org.unicorn.book.app.usuario.dto.RegistroForm;
import org.unicorn.book.autenticacion.AuthenticationUtils;
import org.unicorn.book.autenticacion.CustomUserDetailsImpl;

import javax.persistence.EntityManager;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 *
 */
@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UsuarioService {

    private final UsuarioRepository usuarioRepository;
    private final EntityManager entityManager;
    private final PasswordEncoder pass;

    public UserServiceImpl(UsuarioRepository usuarioRepository, EntityManager entityManager, PasswordEncoder pass) {
        this.usuarioRepository = usuarioRepository;
        this.entityManager = entityManager;
        this.pass = pass;
    }

    @Override
    public void altaUsuario(RegistroForm registroForm) throws UsernameDuplicatedException, EmailDuplicatedException {
        this.checkValidUsername(registroForm.getUsuario());
        this.checkValidEmail(registroForm.getCorreo());

        Usuario usuario = new Usuario();
        usuario.setNombre(registroForm.getNombre());
        usuario.setApellido1(registroForm.getApellido1());
        usuario.setApellido2(registroForm.getApellido2());
        usuario.setEmail(registroForm.getCorreo());
        usuario.setUsuario(registroForm.getUsuario());
        usuario.setPassword(pass.encode(registroForm.getContrasena()));
        List<Rol> roles = new ArrayList<>();
        roles.add(entityManager.getReference(Rol.class, 3L));
        usuario.setRoles(roles);
        usuarioRepository.saveAndFlush(usuario);

        AuthenticationUtils.login(usuario.getUsuario(), usuario.getRoles());
    }

    /**
     *
     * @param username
     * @throws UsernameDuplicatedException
     */
    private void checkValidUsername(String username) throws UsernameDuplicatedException {
        if (Boolean.TRUE.equals(usuarioRepository.existsByUsuario(username))){
            throw new UsernameDuplicatedException("El nombre de usuario ya existe");
        }
    }

    /**
     *
     * @param email
     * @throws EmailDuplicatedException
     */
    private void checkValidEmail(String email) throws EmailDuplicatedException {
        if (Boolean.TRUE.equals(usuarioRepository.existsByEmail(email))) {
            throw new EmailDuplicatedException("El correo electrónico ya existe");
        }
    }
}

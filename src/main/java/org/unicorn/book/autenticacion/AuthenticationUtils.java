package org.unicorn.book.autenticacion;

import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.client.HttpClientErrorException;
import org.unicorn.book.app.usuario.model.Rol;
import org.unicorn.book.app.usuario.model.Usuario;

import java.util.ArrayList;
import java.util.List;

public class AuthenticationUtils {

    public AuthenticationUtils() {
    }

    /**
     * Autentica a un usuario que se acaba de registrar. No es necesaria ningún tipo de validación de credenciales
     * ya que las únicas validaciones necesarias se han realizado previamente al guardado en BDD.
     * El proceso de autenticación consiste en crear el objeto personalizado de detalles de usuario <p>CustomUserDetails.class</p>
     * y añadirlo al contexto de seguridad de scring.
     * Nota: este proceso es peligroso por lo que si que se valida que sea invocado exclusivamente desde el servicio UserService y el método altaUsuario.
     *
     * @param username
     * @param roles
     */
    public static void login(Usuario usuario, List<Rol> roles) {

        if (!"org.unicorn.book.app.usuario.service.UserServiceImpl"
                .equals(Thread.currentThread().getStackTrace()[2].getClassName()) || !"altaUsuario"
                .equals(Thread.currentThread().getStackTrace()[2].getMethodName())) {
            throw new UnsupportedOperationException(
                    "Error autenticando al usuario. Invocación desde un lugar no permitido");
        }

        List<GrantedAuthority> authorities = new ArrayList<>();
        roles.forEach(rol -> authorities.add(rol::getNombre));
        CustomUserDetailsImpl details = new CustomUserDetailsImpl(usuario.getUsuario(), "******", authorities);
        details.setId(usuario.getId());
        details.setNombre(usuario.getNombre());
        details.setApellido1(usuario.getApellido1());
        details.setApellido2(usuario.getApellido2());
        details.setEmail(usuario.getEmail());
        Authentication auth = new UsernamePasswordAuthenticationToken(details, "******", authorities);
        SecurityContextHolder.getContext().setAuthentication(auth);
    }

    public static Long getIdUsuario() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            CustomUserDetailsImpl userDetails = (CustomUserDetailsImpl) authentication.getPrincipal();
            return userDetails.getId();
        }
        return null;
    }

    /**
     *
     * @return
     */
    public static String getNomeCompreto() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            CustomUserDetailsImpl userDetails = (CustomUserDetailsImpl) authentication.getPrincipal();
            return String.format("%s %s %s", userDetails.getNombre(), userDetails.getApellido1(),
                    userDetails.getApellido2());
        }
        return null;
    }

    public static void isSameUserLogged(String username) {
        boolean isSameUser = false;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            CustomUserDetailsImpl userDetails = (CustomUserDetailsImpl) authentication.getPrincipal();
            if (username.equals(userDetails.getUsername())) {
                isSameUser = true;
            }
        }

        if (!isSameUser) {
            throw new HttpClientErrorException(HttpStatus.UNAUTHORIZED,
                    "El usuario no tiene permisos para acceder a este recurso");
        }
    }
}

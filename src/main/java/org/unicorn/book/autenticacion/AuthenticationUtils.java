package org.unicorn.book.autenticacion;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.unicorn.book.app.usuario.model.Rol;

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
    public static void login(String username, List<Rol> roles) {

        if (!"org.unicorn.book.app.usuario.service.UserServiceImpl"
                .equals(Thread.currentThread().getStackTrace()[2].getClassName()) || !"altaUsuario"
                .equals(Thread.currentThread().getStackTrace()[2].getMethodName())) {
            throw new UnsupportedOperationException(
                    "Error autenticando al usuario. Invocación desde un lugar no permitido");
        }

        List<GrantedAuthority> authorities = new ArrayList<>();
        roles.forEach(rol -> authorities.add(rol::getNombre));
        CustomUserDetailsImpl details = new CustomUserDetailsImpl(username, "******", authorities);
        Authentication auth = new UsernamePasswordAuthenticationToken(details, "******", authorities);
        SecurityContextHolder.getContext().setAuthentication(auth);
    }

    /**
     *
     * @return
     */
    public static String getUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getUsername();
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

    /**
     *
     * @return
     */
    public static String getDni() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getDni();
        }
        return null;
    }

    /**
     *
     * @return
     */
    public static String getEmail() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getEmail();
        }
        return null;
    }
}

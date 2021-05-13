package org.unicorn.book.autenticacion;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.unicorn.book.usuario.model.Rol;
import org.unicorn.book.usuario.model.Usuario;

import java.util.ArrayList;
import java.util.List;

/**
 *
 */
public class AutenticacionUtils {

    /**
     * Constructor
     */
    public AutenticacionUtils() {
    }

    /**
     * Autentica a un usuario que se acaba de registrar. No es necesaria ningún tipo de validación de credenciales
     * ya que las únicas validaciones necesarias se han realizado previamente al guardado en BDD.
     * El proceso de autenticación consiste en crear el objeto personalizado de detalles de usuario <p>CustomUserDetails.class</p>
     * y añadirlo al contexto de seguridad de scring.
     *
     * @param usuario el usuario {@link Usuario}
     * @param roles   los roles a asignar {@link List<Rol>}
     */
    public static void login(Usuario usuario, List<Rol> roles) {

        List<GrantedAuthority> authorities = new ArrayList<>();
        roles.forEach(rol -> authorities.add(rol::getNombre));
        CustomUserDetailsDTO details = new CustomUserDetailsDTO(usuario.getUsuario(), "******", authorities);
        details.setId(usuario.getId());
        details.setNombre(usuario.getNombre());
        details.setApellido1(usuario.getApellido1());
        details.setApellido2(usuario.getApellido2());
        details.setEmail(usuario.getEmail());
        Authentication auth = new UsernamePasswordAuthenticationToken(details, "******", authorities);
        SecurityContextHolder.getContext().setAuthentication(auth);
    }

    /**
     * Obtiene el ID en base de datos del usuario loggeado
     *
     * @return el ID del usuario {@link Long}
     */
    public static Long getIdUsuario() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsDTO) {
            CustomUserDetailsDTO userDetails = (CustomUserDetailsDTO) authentication.getPrincipal();
            return userDetails.getId();
        }
        return null;
    }

    /**
     * Obtiene el nombre completo del usuario loggeado
     *
     * @return el nombre  y apellidos del usuario {@link String}
     */
    public static String getNomeCompreto() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsDTO) {
            CustomUserDetailsDTO userDetails = (CustomUserDetailsDTO) authentication.getPrincipal();
            return String.format("%s %s %s", userDetails.getNombre(), userDetails.getApellido1(),
                    userDetails.getApellido2());
        }
        return null;
    }
}

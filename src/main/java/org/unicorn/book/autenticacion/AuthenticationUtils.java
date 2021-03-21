package org.unicorn.book.autenticacion;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class AuthenticationUtils {

    public AuthenticationUtils() {
    }

    public static String getUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getUsername();
        }
        return null;
    }

    public static String getNomeCompreto() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            CustomUserDetailsImpl userDetails = (CustomUserDetailsImpl) authentication.getPrincipal();
            return String.format("%s %s %s", userDetails.getNombre(), userDetails.getApellido1(), userDetails.getApellido2());
        }
        return null;
    }

    public static String getDni() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getDni();
        }
        return null;
    }

    public static String getEmail() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication.getPrincipal() instanceof CustomUserDetailsImpl) {
            return ((CustomUserDetailsImpl) authentication.getPrincipal()).getEmail();
        }
        return null;
    }
}

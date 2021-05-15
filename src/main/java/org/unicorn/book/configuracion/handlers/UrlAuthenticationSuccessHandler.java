package org.unicorn.book.configuracion.handlers;

import org.apache.logging.log4j.util.Strings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.util.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import static org.unicorn.book.configuracion.handlers.RequestHandler.OLD_REQUEST_URI;

/**
 * Clase para redirigir automaticante al usuario tras iniciar sesión a la página que había solicitado previamente
 */
public class UrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    private static final Logger LOGGER = LoggerFactory.getLogger(UrlAuthenticationSuccessHandler.class);

    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException {

        this.handle(request, response, authentication);
        this.clearAuthenticationAttributes(request);
    }

    /**
     * Envía la redirección a la página solicitada previamente
     *
     * @param request        la petición {@link HttpServletRequest}
     * @param response       la respuesta {@link HttpServletResponse}
     * @param authentication la autenticación del usuario {@link Authentication}
     * @throws IOException error
     */
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException {

        String targetUrl = this.determineTargetUrl(authentication, request.getSession());

        if (response.isCommitted()) {
            return;
        }

        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    /**
     * Determina en función de los roles del usuario a donde se le debe redirigir tras iniciar sesión
     *
     * @param authentication la autenticación del usuario {@link Authentication}
     * @param session        la sesión del usuario {@link HttpSession}
     * @return la url a donde redirigir {@link String}
     */
    protected String determineTargetUrl(final Authentication authentication, HttpSession session) {
        final String url = String.valueOf(session.getAttribute(OLD_REQUEST_URI));
        Map<String, String> roleTargetUrlMap = new HashMap<>();
        roleTargetUrlMap.put("ROLE_CLIENTE", ObjectUtils.isEmpty(url) || "null".equals(url) ? Strings.EMPTY : url);
        roleTargetUrlMap.put("ROLE_ADMIN",
                (ObjectUtils.isEmpty(url) || "null".equals(url)) || "/".equals(url) ? "/consola" : url);

        final Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (final GrantedAuthority grantedAuthority : authorities) {
            String authorityName = grantedAuthority.getAuthority();
            if (roleTargetUrlMap.containsKey(authorityName)) {
                return roleTargetUrlMap.get(authorityName);
            }
        }

        throw new IllegalStateException();
    }

    /**
     * Elimina los atributos de la sesión
     *
     * @param request la petición {@link      * @param authentication la autenticación del usuario {@link Authentication}}
     */
    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) {
            return;
        }
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
        session.removeAttribute(OLD_REQUEST_URI);
    }
}

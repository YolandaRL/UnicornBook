package org.unicorn.book.configuracion;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestInterceptor implements HandlerInterceptor {

    public static final String OLD_REQUEST_URI = "requestUri";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        final String requestUri = request.getRequestURI();
        if (!requestUri.startsWith("/resources") && !requestUri.equals("/acceso")) {
            request.getSession().setAttribute(OLD_REQUEST_URI, request.getRequestURI());
        }
        return true;
    }
}

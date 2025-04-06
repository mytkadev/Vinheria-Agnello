package org.fiap.vinheria_agnello.util;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.fiap.vinheria_agnello.service.SessionService;

import java.io.IOException;
import java.util.List;

@WebFilter("/*") // or your desired URL pattern
public class AuthFilter implements Filter {

    // Pages that do NOT require login
    private static final List<String> excludedPaths = List.of(
            "/login.jsp",
            "/index",
            "/register.jsp",
            "/servlets/",
            "/assets/",
            "/css/",
            "/js/",
            "/images/"
    );

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        String path = request.getRequestURI().substring(request.getContextPath().length());

        boolean isExcluded = excludedPaths.stream().anyMatch(path::startsWith);

        if (!isExcluded) {
            HttpSession session = request.getSession(false);
            if (session == null || session.getAttribute("user") == null) {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                return;
            }
        }

        chain.doFilter(req, res);
    }
}

package org.fiap.vinheria_agnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.http.*;
import org.fiap.vinheria_agnello.persistence.DAO.UsersDAO;
import org.fiap.vinheria_agnello.service.AuthService;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("password");

        UsersDAO dao = new UsersDAO();
        AuthService auth = new AuthService();

        String passwordHash = dao.getPassword(email);

        if (passwordHash != null && auth.verifyPassword(senha, passwordHash)) {
            //TODO: Redirect pro lugar certo
            response.sendRedirect("index.jsp");
        } else {
            //TODO: Estilizar mensagens de erro e padronizar.
            request.setAttribute("mensagem", "Credenciais incorretas.");
        }

        try {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}

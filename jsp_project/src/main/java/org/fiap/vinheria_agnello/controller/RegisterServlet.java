package org.fiap.vinheria_agnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.fiap.vinheria_agnello.persistence.DAO.UsersDAO;
import org.fiap.vinheria_agnello.service.AuthService;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/servlets/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UsersDAO dao = new UsersDAO();
        AuthService auth = new AuthService();

        String senhaHash = auth.hashPassword(password);

        if (!dao.userExists(email)) {
            boolean cadastrado = dao.registerUser(name, email, senhaHash);

            if (cadastrado) {
                request.setAttribute("mensagem", "Usuário cadastrado com sucesso!");
            } else {
                request.setAttribute("mensagem", "Erro ao cadastrar usuário.");
            }

        } else {
            request.setAttribute("mensagem", "Este e-mail já está cadastrado.");
        }

        try {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }

    }
}

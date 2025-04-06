package org.fiap.vinheria_agnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.fiap.vinheria_agnello.persistence.DAO.WineDAO;

import java.io.IOException;

@WebServlet("/index")
public class HomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WineDAO dao = new WineDAO();
        request.setAttribute("wines", dao.getLatestWines(4));
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
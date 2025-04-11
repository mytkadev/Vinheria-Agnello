package org.fiap.vinheria_agnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.fiap.vinheria_agnello.persistence.DAO.SubscriptionsDAO;
import org.fiap.vinheria_agnello.persistence.DAO.WineDAO;

import java.io.IOException;
@WebServlet("/marketplace")
public class MarketplaceServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WineDAO wineDAO = new WineDAO();
        request.setAttribute("wines", wineDAO.getWines());
        request.getRequestDispatcher("/marketplace.jsp").forward(request, response);
    }
}

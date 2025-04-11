package org.fiap.vinheria_agnello.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.fiap.vinheria_agnello.persistence.DAO.WineDAO;

import java.io.IOException;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WineDAO wineDAO = new WineDAO();
        int wineID = Integer.parseInt(request.getParameter("wineID"));
        request.setAttribute("wine", wineDAO.getWine(wineID));
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }
}

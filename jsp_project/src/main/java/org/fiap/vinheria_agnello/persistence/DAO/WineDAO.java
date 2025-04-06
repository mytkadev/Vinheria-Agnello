package org.fiap.vinheria_agnello.persistence.DAO;

import org.fiap.vinheria_agnello.model.Wine;
import org.fiap.vinheria_agnello.persistence.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WineDAO {

    public List<Wine> getLatestWines(int limit) {
        String sql = "SELECT title, origin_image, type_image, grape, price, image_url, new FROM wines WHERE new = true LIMIT ?";

        List<Wine> wines = new ArrayList<>();

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, limit);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Wine wine = new Wine(
                        rs.getString("title"),
                        rs.getString("origin_image"),
                        rs.getString("type_image"),
                        rs.getString("grape"),
                        rs.getDouble("price"),
                        rs.getString("image_url"),
                        rs.getBoolean("new")
                );
                wines.add(wine);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wines;
    }
}
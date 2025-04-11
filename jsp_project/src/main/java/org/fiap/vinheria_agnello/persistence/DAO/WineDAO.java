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
        String sql = "SELECT id,title, origin_image, type_image, grape, price, image_url, new FROM wines WHERE new = true ";

        List<Wine> wines = new ArrayList<>();

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Wine wine = new Wine(
                        rs.getString("title"),
                        rs.getString("origin_image"),
                        rs.getString("type_image"),
                        rs.getString("grape"),
                        rs.getDouble("price"),
                        rs.getString("image_url"),
                        rs.getBoolean("new"),
                        rs.getInt("id")
                );
                wines.add(wine);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wines;
    }

    public List<Wine> getWines() {
        String sql = "SELECT id,title, origin_image, type_image, grape, price, image_url, new FROM wines";

        List<Wine> wines = new ArrayList<>();

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Wine wine = new Wine(
                        rs.getString("title"),
                        rs.getString("origin_image"),
                        rs.getString("type_image"),
                        rs.getString("grape"),
                        rs.getDouble("price"),
                        rs.getString("image_url"),
                        rs.getBoolean("new"),
                        rs.getInt("id")
                );
                wines.add(wine);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wines;
    }

    public Wine getWine(int wineID) {
        String sql = "SELECT id, title, origin_image, type_image, grape, price, image_url, new FROM wines WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, wineID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Wine(
                        rs.getString("title"),
                        rs.getString("origin_image"),
                        rs.getString("type_image"),
                        rs.getString("grape"),
                        rs.getDouble("price"),
                        rs.getString("image_url"),
                        rs.getBoolean("new"),
                        rs.getInt("id")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

}
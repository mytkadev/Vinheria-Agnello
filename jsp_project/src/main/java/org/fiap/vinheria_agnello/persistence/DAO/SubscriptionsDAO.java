package org.fiap.vinheria_agnello.persistence.DAO;

import org.fiap.vinheria_agnello.model.Subscription;
import org.fiap.vinheria_agnello.model.Wine;
import org.fiap.vinheria_agnello.persistence.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SubscriptionsDAO {

    public List<Subscription> getSubscriptions() {
        String sql = "SELECT name, subtitle, description FROM subscriptions";

        List<Subscription> subscriptions = new ArrayList<>();

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Subscription subsc = new Subscription(
                        rs.getString("name"),
                        rs.getString("subtitle"),
                        rs.getString("description")
                );
                subscriptions.add(subsc);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return subscriptions;
    }

}

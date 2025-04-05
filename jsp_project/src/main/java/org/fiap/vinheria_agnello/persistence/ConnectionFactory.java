package org.fiap.vinheria_agnello.persistence;

import org.fiap.vinheria_agnello.util.EnvironmentManager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private static final String URL = EnvironmentManager.getEnv("DB_URL");
    private static final String USER = EnvironmentManager.getEnv("DB_USER");
    private static final String PASSWORD = EnvironmentManager.getEnv("DB_PASSWORD");

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver do PostgreSQL não encontrado!", e);
        }
    }
}

package org.fiap.vinheria_agnello.util;

public class EnvironmentManager {

    /**
     * Gets the value of the specified environment variable.
     *
     * @param varName Name of the environment variable
     * @return The value of the environment variable
     * @throws IllegalStateException if the variable is not set
     */
    public static String getEnv(String varName) {
        String value = System.getenv(varName);
        if (value == null || value.isEmpty()) {
            throw new IllegalStateException("Environment variable '" + varName + "' is not set.");
        }
        return value;
    }

    /**
     * Gets the value of the specified environment variable or returns a default.
     *
     * @param varName      Name of the environment variable
     * @param defaultValue Fallback value if the environment variable is not set
     * @return The value of the environment variable or defaultValue
     */
    public static String getEnvOrDefault(String varName, String defaultValue) {
        String value = System.getenv(varName);
        return (value == null || value.isEmpty()) ? defaultValue : value;
    }
}

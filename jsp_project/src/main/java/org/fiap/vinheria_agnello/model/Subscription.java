package org.fiap.vinheria_agnello.model;

public class Subscription {
    private String name;
    private String subtitle;
    private String description;

    public Subscription(String name, String subtitle, String description) {
        this.name = name;
        this.subtitle = subtitle;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

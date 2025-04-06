package org.fiap.vinheria_agnello.model;

public class Wine {
    private String title;
    private String originImage;
    private String typeImage;
    private String grape;
    private double price;
    private String imageUrl;
    private boolean _new;

    public Wine(String title, String originImage, String typeImage, String grape, double price, String imageUrl,boolean _new) {
        this.title = title;
        this.originImage = originImage;
        this.typeImage = typeImage;
        this.grape = grape;
        this.price = price;
        this.imageUrl = imageUrl;
        this._new = _new;
    }

    // Getters
    public String getTitle() { return title; }
    public String getOriginImage() { return originImage; }
    public String getTypeImage() { return typeImage; }
    public String getGrape() { return grape; }
    public double getPrice() { return price; }
    public String getImageUrl() { return imageUrl; }
    public boolean isNew() { return _new; }
}
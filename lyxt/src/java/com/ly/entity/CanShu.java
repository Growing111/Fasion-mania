package com.ly.entity;

import java.util.List;

public class CanShu {
    private int id;
    private String color;
    private String size;
    private int s_id;
    private List<CanShu> shop;

    @Override
    public String toString() {
        return "CanShu{" +
                "id=" + id +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", s_id=" + s_id +
                '}';
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public List<CanShu> getShop() {
        return shop;
    }

    public void setShop(List<CanShu> shop) {
        this.shop = shop;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
}

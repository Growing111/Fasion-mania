package com.ly.fashionmania.entity;

import java.util.List;

public class Parameter {
    private int id;
    private String color;
    private String size;
    private int s_id;
    private List<Parameter> shop;

    @Override
    public String toString() {
        return "Parameter{" +
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

    public List<Parameter> getShop() {
        return shop;
    }

    public void setShop(List<Parameter> shop) {
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

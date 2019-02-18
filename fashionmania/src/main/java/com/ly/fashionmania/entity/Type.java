package com.ly.fashionmania.entity;

public class Type {
    private int id;
    private String leixing;
    private String sex;
    private Shop shop;

    @Override
    public String toString() {
        return "Type{" +
                "id=" + id +
                ", leixing='" + leixing + '\'' +
                ", sex='" + sex + '\'' +
                ", shop=" + shop +
                '}';
    }

    public String getLeixing() {
        return leixing;
    }

    public void setLeixing(String leixing) {
        this.leixing = leixing;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}

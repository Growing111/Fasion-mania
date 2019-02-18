package com.ly.fashionmania.entity;

public class OrderDetail {
    private int id;
    private int o_id;
    private int s_id;
    private int count;
    private String color;
    private String size;
    private Orders orders;
    private Shop shop;

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", o_id=" + o_id +
                ", s_id=" + s_id +
                ", count=" + count +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", orders=" + orders +
                ", shop=" + shop +
                '}';
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }
}

package com.ly.entity;

import java.sql.Timestamp;

public class Orders {
    private int id;
    private String address;
    private Timestamp makeTime;
    private String  status;
    private int u_id;
    private User user;

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", makeTime=" + makeTime +
                ", status='" + status + '\'' +
                ", u_id=" + u_id +
                ", user=" + user +
                '}';
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getMakeTime() {
        return makeTime;
    }

    public void setMakeTime(Timestamp makeTime) {
        this.makeTime = makeTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}

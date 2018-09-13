package com.ly.dao;

import com.ly.entity.LiuYan;

import java.util.List;

public interface LiuYanDao {
    int addLiuYan(LiuYan liuYan);

    List<LiuYan> findAllLiuyan();

}

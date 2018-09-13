package com.ly.service;

import com.ly.entity.Admin;
import com.ly.entity.LiuYan;

import java.util.List;

public interface ILiuYanService {
    int addLiuYan(LiuYan liuYan);

    List<LiuYan> findAllLiuyan();
}

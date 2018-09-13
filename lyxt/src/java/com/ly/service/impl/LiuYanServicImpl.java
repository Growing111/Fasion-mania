package com.ly.service.impl;

import com.ly.dao.LiuYanDao;
import com.ly.entity.Admin;
import com.ly.entity.LiuYan;
import com.ly.service.ILiuYanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LiuYanServicImpl implements ILiuYanService{

    @Autowired
    private LiuYanDao liuYanDao;
    @Override
    public int addLiuYan(LiuYan liuYan) {
        return liuYanDao.addLiuYan(liuYan);
    }

    @Override
    public List<LiuYan> findAllLiuyan() {
        return liuYanDao.findAllLiuyan();
    }
}

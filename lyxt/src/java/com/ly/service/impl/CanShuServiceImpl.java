package com.ly.service.impl;

import com.ly.dao.CanShuDao;
import com.ly.entity.CanShu;
import com.ly.service.ICanShuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CanShuServiceImpl implements ICanShuService {

    @Autowired
    private CanShuDao canShuDao;

    @Override
    public List<CanShu> getAllByS_id(int s_id) {
        return canShuDao.getAllByS_id(s_id);
    }
}

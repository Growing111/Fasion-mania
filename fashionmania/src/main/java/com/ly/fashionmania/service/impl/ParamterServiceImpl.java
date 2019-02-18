package com.ly.fashionmania.service.impl;


import com.ly.fashionmania.dao.ParameterDao;
import com.ly.fashionmania.entity.Parameter;
import com.ly.fashionmania.service.IParamterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParamterServiceImpl implements IParamterService {

    @Autowired
    private ParameterDao parameterDao;

    @Override
    public List<Parameter> getAllByS_id(int s_id) {
        return parameterDao.getAllByS_id(s_id);
    }
}

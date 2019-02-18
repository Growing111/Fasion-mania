package com.ly.fashionmania.service;

import com.ly.fashionmania.entity.Parameter;

import java.util.List;

public interface IParamterService {
    List<Parameter> getAllByS_id(int s_id);
}

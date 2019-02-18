package com.ly.fashionmania.dao;



import com.ly.fashionmania.entity.Parameter;

import java.util.List;

public interface ParameterDao {

    List<Parameter> getAllByS_id(int s_id);
}

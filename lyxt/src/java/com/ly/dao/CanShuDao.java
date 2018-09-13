package com.ly.dao;

import com.ly.entity.CanShu;

import java.util.List;

public interface CanShuDao {

    List<CanShu> getAllByS_id(int s_id);
}

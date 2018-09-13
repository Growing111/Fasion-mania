package com.ly.service;

import com.ly.entity.CanShu;

import java.util.List;

public interface ICanShuService {
    List<CanShu> getAllByS_id(int s_id);
}

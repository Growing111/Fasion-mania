package com.ly.fashionmania.service.impl;


import com.ly.fashionmania.dao.AdminDao;
import com.ly.fashionmania.entity.Admin;
import com.ly.fashionmania.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements IAdminService {

    @Autowired
    private AdminDao adminDao ;

    @Override
    public Admin findByAdmin(Admin admin) {
        return adminDao.findByAdmin(admin);
    }

}

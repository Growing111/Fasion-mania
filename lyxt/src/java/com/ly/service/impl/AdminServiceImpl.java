package com.ly.service.impl;

import com.ly.dao.AdminDao;
import com.ly.entity.Admin;
import com.ly.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements IAdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin findByAdmin(Admin admin) {
        return adminDao.findByAdmin(admin);
    }
}

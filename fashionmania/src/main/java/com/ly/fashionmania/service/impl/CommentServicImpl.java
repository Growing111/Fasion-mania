package com.ly.fashionmania.service.impl;

import com.ly.fashionmania.dao.CommentDao;
import com.ly.fashionmania.entity.Comment;
import com.ly.fashionmania.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServicImpl implements ICommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public int addLiuYan(Comment comment) {
        return commentDao.addLiuYan(comment);
    }

    @Override
    public List<Comment> findAllLiuyan() {
        return commentDao.findAllLiuyan();
    }
}

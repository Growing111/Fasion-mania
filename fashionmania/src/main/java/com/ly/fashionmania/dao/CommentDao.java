package com.ly.fashionmania.dao;

import com.ly.fashionmania.entity.Comment;

import java.util.List;


public interface CommentDao {
    int addLiuYan(Comment comment);

    List<Comment> findAllLiuyan();

}

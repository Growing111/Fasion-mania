package com.ly.fashionmania.service;



import com.ly.fashionmania.entity.Comment;

import java.util.List;

public interface ICommentService {
    int addLiuYan(Comment comment);

    List<Comment> findAllLiuyan();

    List<Comment> findAllLiuyanPage(int limit,int page);
}

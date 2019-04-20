package com.ly.fashionmania.dao;

import com.ly.fashionmania.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface CommentDao {
    int addLiuYan(Comment comment);

    List<Comment> findAllLiuyan();


    List<Comment> findAllLiuyanPage(@Param("limit") int limit,@Param("page") int page);
}

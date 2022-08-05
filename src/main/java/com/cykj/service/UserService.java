package com.cykj.service;

import com.cykj.bean.Tblstaff;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface UserService {
    //模糊查询
    Map<String,Object> selUserList( String acc, String name);
    //删除
    int delUser(int id);
    //修改
    int updateUser(Tblstaff tblstaff);
    //增加
    int insertUser(Tblstaff tblstaff);
}

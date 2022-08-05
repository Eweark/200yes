package com.cykj.service;

import com.cykj.bean.Tblrole;

import java.util.List;
import java.util.Map;

public interface RoleService {
    //查询所有角色
    Map<String,Object> queryAllRole(int start,int size);
    //查询所有权限
    Map<String,Object> queryAllPower(int roleId);
    //通过id查询权限
    Map<String,Object> queryPowerById(int roleId);
    //批量添加权限
    int insertPower(List<Integer> powerList, int roleId);
    //添加角色后返回角色id
    int insertRole(Tblrole tblrole);
    //删除角色
    int delRole(int roleId);
    //修改角色
    int updateRole(Tblrole tblrole);
}

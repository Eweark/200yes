package com.cykj.mapper;

import com.cykj.bean.Tblpower;
import com.cykj.bean.Tblrole;
import com.cykj.bean.Tblrolepower;
import com.cykj.bean.Tblstaff;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface RoleMapper {
    //查询所有角色
    List<Tblrole> queryAllRole();
    //查询所有权限
    List<Tblpower> queryAllPower();
    //通过角色id查询权限
    List<Tblpower> queryPowerById(@Param("roleId") int roleId);
    //查询未拥有的权限
    List<Tblpower> queryNoPower(@Param("roleId") int roleId);
    //删除权限
    int delPowerById(@Param("roleId") int roleId, @Param("powerId") int powerId);
    //删除角色的所有权限
    int delAllById(@Param("roleId") int roleId);
    //添加权限
    int insertPower(Tblrolepower tblrolepower);
    //添加角色
    int insertRole(Tblrole tblrole);
    //修改角色
    int updateRole(Tblrole tblrole);
    //通过roleName查询id
    List<Tblrole> queryRoleId(@Param("roleName") String roleName);
    //删除角色信息
    int deleteRole(@Param("roleId") int roleId);
    //查询角色中是否有用户
    List<Tblstaff> queryStaffByRole(@Param("roleId") int roleId);

}

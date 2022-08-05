package com.cykj.mapper;

import com.cykj.bean.Tblstaff;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {
    //登录
    List<Tblstaff> loginStaff(@Param("acc") String acc, @Param("pwd") String pwd);
//    //注册
    int insertStaff(Tblstaff tblstaff);
    //查询用户
    List<Tblstaff> selAllUser(@Param("acc")String acc,@Param("name") String name);
    //删除用户
    int delUser(@Param("staffId") int id);
    //添加用户
    int insertUser(Tblstaff tblstaff);
    //修改用户
    int updateUser(Tblstaff tblstaff);

}

package com.cykj.service.impl;

import com.cykj.bean.Tblstaff;
import com.cykj.mapper.UserMapper;
import com.cykj.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public Map<String,Object> selUserList(String acc,String name) {
//        PageHelper.startPage(start,size);
        List<Tblstaff> tblstaffs = userMapper.selAllUser(acc,name);
//        PageInfo<Tblstaff> pageInfo = new PageInfo<>(tblstaffs);
//        List<Tblstaff> list = pageInfo.getList();
        Map<String,Object> map = new HashMap<>();
        map.put("staffList",tblstaffs);
        map.put("record",tblstaffs.size());
        return map;
    }

    @Override
    public int delUser(int id) {
        return userMapper.delUser(id);
    }

    @Override
    public int updateUser(Tblstaff tblstaff) {
        return userMapper.updateUser(tblstaff);
    }

    @Override
    public int insertUser(Tblstaff tblstaff) {
        return userMapper.insertUser(tblstaff);
    }
}

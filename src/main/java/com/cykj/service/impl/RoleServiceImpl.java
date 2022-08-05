package com.cykj.service.impl;

import com.cykj.bean.Tblpower;
import com.cykj.bean.Tblrole;
import com.cykj.bean.Tblrolepower;
import com.cykj.bean.Tblstaff;
import com.cykj.mapper.RoleMapper;
import com.cykj.service.RoleService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public Map<String,Object> queryAllRole(int start,int size) {
        PageHelper.startPage(start,size);
        List<Tblrole> tblroles = roleMapper.queryAllRole();
        PageInfo<Tblrole> pageInfo = new PageInfo<>(tblroles);
        Map<String,Object> map = new HashMap<>();
        map.put("roleList",pageInfo.getList());
        map.put("recordCount",pageInfo.getTotal());
        return map;
    }

    @Override
    public Map<String,Object> queryAllPower(int roleId) {
        List<Tblpower> tblpowers = roleMapper.queryAllPower();
        List<Tblpower> hasPowerList = roleMapper.queryPowerById(roleId);
//        List<Tblpower> tblpowers = roleMapper.queryNoPower(roleId);
        Map<String,Object> map = new HashMap<>();
        map.put("powerList",tblpowers);
        map.put("rolePower",hasPowerList);
        return map;
    }

    @Override
    public Map<String,Object> queryPowerById(int roleId) {
        List<Tblpower> tblpowers = roleMapper.queryPowerById(roleId);
        Map<String,Object> map = new HashMap<>();
        map.put("updPower",tblpowers);
        return map;
    }

    @Transactional(isolation= Isolation.REPEATABLE_READ,propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public int insertPower(List<Integer> powerList, int roleId) {
        Set<Integer> set = new HashSet<>(powerList);
        powerList.clear();
        powerList.addAll(set);
        int i = 0;
        if (powerList.size() > 0){
            roleMapper.delAllById(roleId);
            for (Integer power : powerList) {
                Tblrolepower tblrolepower = new Tblrolepower();
                tblrolepower.setPowerId(power);
                tblrolepower.setRoleId(roleId);
                i = roleMapper.insertPower(tblrolepower);
            }
        }
        if (i > 0){
            return 1;
        }else {
            return 0;
        }
    }

    @Transactional(isolation= Isolation.REPEATABLE_READ,propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public int insertRole(Tblrole tblrole) {
        return roleMapper.insertRole(tblrole);
    }

    @Transactional(isolation= Isolation.REPEATABLE_READ,propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public int delRole(int roleId) {
        List<Tblstaff> tblstaffs = roleMapper.queryStaffByRole(roleId);
        if (tblstaffs.size() == 0){
            int dP = roleMapper.delAllById(roleId);
            int dR = roleMapper.deleteRole(roleId);
            if (dR > 0){
                return 1;
            }else {
                return 0;
            }
        }else {
            return 2;
        }
    }

    @Transactional(isolation= Isolation.REPEATABLE_READ,propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public int updateRole(Tblrole tblrole) {
        return roleMapper.updateRole(tblrole);
    }

}

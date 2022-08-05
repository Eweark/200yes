package com.cykj.controller;

import com.alibaba.fastjson.JSONArray;
import com.cykj.bean.Tblrole;
import com.cykj.bean.Tblstaff;
import com.cykj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("/main")
    public String main(){
        return "main";
    }

    @RequestMapping("/power")
    @ResponseBody
    public Map<String,Object> selPower(HttpServletRequest request){
        Tblstaff user = (Tblstaff) request.getSession().getAttribute("user");
        return roleService.queryPowerById(user.getRoleId());
    }

    @RequestMapping(value = "/roleList", method = RequestMethod.POST,
            produces="application/json;charset=utf-8")
    @ResponseBody
    public String selAllRole(int pageCurr,int pageSize){
        Map<String, Object> map = roleService.queryAllRole(pageCurr, pageSize);
        return JSONArray.toJSONString(map);
    }

    @RequestMapping("/roleManage")
    public String rleManage(){
        return "roleManage";
    }

    @RequestMapping("/delRole")
    @ResponseBody
    public int delRole(int roleId){
        return roleService.delRole(roleId);
    }

    @RequestMapping("/roleAddOrUpd")
    public String toInsertOrUpd(){
        return "roleAddOrUpd";
    }

    @RequestMapping("/addRole")
    @ResponseBody
    public int insertRole(Tblrole tblrole){
        return roleService.insertRole(tblrole);
    }

    @RequestMapping("/updRole")
    @ResponseBody
    public int updateRole(Tblrole tblrole){
        return roleService.updateRole(tblrole);
    }

    @RequestMapping("/roleSetPower")
    public String toPowerPage(){
        return "roleSetPower";
    }

    @RequestMapping("/allPower")
    @ResponseBody
    public String queryAllPower(int roleId){
        Map<String, Object> map = roleService.queryAllPower(roleId);
        return JSONArray.toJSONString(map);
    }

    @RequestMapping("/insertPower")
    @ResponseBody
    public int insertPower(@RequestBody Tblrole tblrole){
        int i = roleService.insertPower(tblrole.getPowerIds(),tblrole.getRoleId());
        if (i > 0){
            return 1;
        }else {
            return 0;
        }
    }

}

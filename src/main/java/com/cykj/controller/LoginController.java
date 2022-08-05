package com.cykj.controller;

import com.alibaba.fastjson.JSONArray;
import com.cykj.bean.Tblstaff;
import com.cykj.service.LoginService;
import com.mysql.cj.xdevapi.JsonArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

//@WebService
@Controller
@RequestMapping("/userManage")
public class LoginController {

    @Autowired
    private LoginService loginService;

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/loginView")
    public String login(){
        return "login";//页面文件名称
    }

    /**
     * 注册界面
     * @return
     */
    @RequestMapping("/enrollView")
    public String toEnroll(){
        return "enroll";
    }

    /**
     * 登录方法
     * @param acc
     * @param pwd
     * @param model
     * @return
     */
    @RequestMapping("/doLogin")
    public String doLogin(String acc, String pwd, Model model,HttpServletRequest request){
        int i = loginService.loginUser(acc, pwd,request);
        if (i > 0){
            model.addAttribute("userName",acc);
            return "redirect:/role/main";
        }else {
            return "login";
        }
    }

    /**
     * 注册方法
     * @param req
     * @param filePath
     * @return
     */
    @RequestMapping(value = "/doEnroll")
    public String doEnroll(Tblstaff tblstaff, MultipartFile filePath, HttpServletRequest req){
        int i = loginService.enrollUser(tblstaff, filePath, req);
        if (i > 0){
            return "login";
        }else {
            return "enroll";
        }
    }

    @RequestMapping(value = "/checkAcc", method = RequestMethod.POST,
            produces="application/json;charset=utf-8")
    public @ResponseBody String checkAcc(@RequestBody String userName){
        System.out.println(userName);
        return "1";
    }

    @RequestMapping("/loginM")
    @ResponseBody
    public String loginMethod(String acc,String pwd,HttpServletRequest request){
        int i = loginService.loginUser(acc, pwd,request);
        if (i > 0){
//            model.addAttribute("userName",acc);
            return JSONArray.toJSONString(1);
        }else {
            return JSONArray.toJSONString(0);
        }
    }
}

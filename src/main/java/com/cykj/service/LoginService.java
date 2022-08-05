package com.cykj.service;

import com.cykj.bean.Tblstaff;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface LoginService {
    //登录
    int loginUser(String acc, String pwd, HttpServletRequest request);
    //注册
    int enrollUser(Tblstaff tblstaff, MultipartFile filePath, HttpServletRequest req);
}

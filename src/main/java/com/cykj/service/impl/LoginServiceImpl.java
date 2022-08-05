package com.cykj.service.impl;

import com.cykj.bean.Tblstaff;
import com.cykj.mapper.UserMapper;
import com.cykj.service.LoginService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";
    @Autowired
    public UserMapper userMapper;
    @Override
    public int loginUser(String acc, String pwd, HttpServletRequest request) {
        List<Tblstaff> user = userMapper.loginStaff(acc, pwd);
        if (user.size() > 0){
            request.getSession().setAttribute("user",user.get(0));
            return 1;
        }else {
            return 0;
        }
    }

    @Override
    public int enrollUser(Tblstaff tblstaff, MultipartFile filePath, HttpServletRequest req) {
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        String uploadPath = req.getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;

        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        String fn = filePath.getOriginalFilename();
        System.out.println(fn);
        try {
            filePath.transferTo(new File(uploadPath+"/"+fn));//保存file
        } catch (IOException e) {
            e.printStackTrace();
        }
        tblstaff.setHeadImg("upload/"+fn);
        return userMapper.insertStaff(tblstaff);
    }


}

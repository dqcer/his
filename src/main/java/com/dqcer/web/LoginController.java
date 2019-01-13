package com.dqcer.web;

import com.dqcer.entity.User;
import com.dqcer.service.UserService;
import com.dqcer.util.CommDAO;
import com.dqcer.util.Info;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

/**
 * @Author: dongQin
 * @Date: 2019/1/3 13:36
 * @Description: 登录控制
 */

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request) {

        String pagerandom = request.getParameter("pagerandom")==null?"":request.getParameter("pagerandom");
        String random = (String)request.getSession().getAttribute("random");
        if(!pagerandom.equals(random)&&request.getParameter("a")!=null) {
            request.setAttribute("random", "");
            return "/admin/login";

        } else{
            String username = request.getParameter("uname");
            String password = request.getParameter("upass");
            System.out.println(username+","+password);
            String utype = request.getParameter("utype");
            request.getSession().setAttribute("utype", utype);
            List<User> list = userService.findUserByName(username);
            if (list.size() == 1) {
                User user = list.get(0);
                List<User> ulist = userService.findUserByNameAndPass(username, password);

                if (ulist.size() == 1 && password.equals(user.getUpass().toString())) {
                    request.getSession().setAttribute("admin", user);
                    return "/admin/index";

                } else {

                    request.setAttribute("error", "");
                    return  "/admin/login";
                }
            } else {
                request.setAttribute("error", "");
                return "/admin/login";
            }
        }
    }




}

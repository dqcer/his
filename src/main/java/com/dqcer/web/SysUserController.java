package com.dqcer.web;

import com.dqcer.entity.UserQo;
import com.dqcer.service.UserService;
import com.dqcer.util.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * @Author: dongQin
 * @Date: 2019/1/3 13:36
 * @Description: 登录控制
 */

@Controller
@RequestMapping("user")
public class SysUserController {

    private int                 pageSize     = Paging.DEFAULT_PAGE_SIZE;
    @Autowired
    private UserService userService;


    @RequestMapping("list")
    public ModelAndView showUserLisPage(UserQo qo) {
        int currNo = 0;

        if(qo.getCurrentPageNo()>0){
            currNo = (qo.getCurrentPageNo() - 1) * pageSize;
        }
        qo.setPageSize(pageSize);
        qo.setBegin(currNo);
        Paging paging = userService.findByPage(qo);
        ModelAndView model = new ModelAndView("/admin/sysuser/userList");
        model.addObject("paging",paging);
        model.addObject("qo",qo);//回显示
        return model;
    }





}

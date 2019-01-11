package com.dqcer.service.impl;

import com.dqcer.dao.UserDao;
import com.dqcer.entity.User;
import com.dqcer.entity.UserQo;
import com.dqcer.service.UserService;
import com.dqcer.util.PageManager;
import com.dqcer.util.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @Author: dongQin
 * @Date: 2019/1/3 14:05
 * @Description: 用户接口实现类
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public List<User> findAll(){
        return userDao.findAll();
    }
    /**
     * 根据用户名称查找
     *
     * @param username
     * @return
     */
    public List<User> findUserByName(String username) {
        return userDao.findUserByName(username);
    }

    /**
     * 根据用户名称和密码查找
     *
     * @param username
     * @param password
     * @return
     */
    public List<User> findUserByNameAndPass(String username, String password) {
        return userDao.findUserByNameAndPass(username, password);
    }

    public Paging findByPage(UserQo qo) {
        //初始化pageing
        Paging paging = null;
        try{
            paging = PageManager.initPaging(qo.getPageSize(), qo.getCurrentPageNo(), userDao.findCount(qo));
            paging.setPagingValueList(userDao.findByQo(qo));
        }catch (Exception e){
            System.err.println(String.format("分页查询用户列表失败：%s",e.getMessage()));
        }


        return paging;
    }
}

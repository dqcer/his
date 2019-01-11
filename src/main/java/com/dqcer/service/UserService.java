package com.dqcer.service;

import com.dqcer.entity.User;
import com.dqcer.entity.UserQo;
import com.dqcer.util.Paging;

import java.util.HashMap;
import java.util.List;

/**
 * @Author: dongQin
 * @Date: 2019/1/3 14:04
 * @Description: 用户接口
 */

public interface UserService {

    List<User> findAll();

    /**
     * 根据用户名称查找
     *
     * @param username
     * @return
     */
    List<User> findUserByName(String username);

    /**
     * 根据用户名称和密码查找
     *
     * @param username
     * @param password
     * @return
     */
    List<User> findUserByNameAndPass(String username, String password);

    /**
    * @Author xuting
    * @Description 分页查询
    * @Date 14:22 2019/1/5
    * @Param [qo]
    * @return com.dqcer.util.Paging
    **/
    Paging findByPage(UserQo qo);
}

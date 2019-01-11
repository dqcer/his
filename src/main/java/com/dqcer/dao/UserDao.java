package com.dqcer.dao;

import com.dqcer.entity.User;
import com.dqcer.entity.UserQo;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * @Author: dongQin
 * @Date: 2019/1/3 14:06
 * @Description: 用户Dao
 */

public interface UserDao {

    List<User> findAll();

    /**
     * 根据名称
     * @param username
     * @return
     */
    List<User> findUserByName(@Param("username") String username);

    /**
     * 根据名称和密码
     *
     * @param username
     * @param password
     * @return
     */
    List<User> findUserByNameAndPass(@Param("username") String username, @Param("password") String password);

    int findCount(UserQo qo);

    List<User> findByQo(UserQo qo);
}

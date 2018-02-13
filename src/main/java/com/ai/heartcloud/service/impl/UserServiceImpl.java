package com.ai.heartcloud.service.impl;

import com.ai.heartcloud.dao.UserMapper;
import com.ai.heartcloud.bean.User;
import com.ai.heartcloud.service.UserService;
import com.ai.heartcloud.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/02/10.
 */
@Service
@Transactional
public class UserServiceImpl extends AbstractService<User> implements UserService {
    @Resource
    private UserMapper userMapper;

}

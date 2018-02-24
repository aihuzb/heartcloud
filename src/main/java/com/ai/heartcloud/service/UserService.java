package com.ai.heartcloud.service;
import com.ai.heartcloud.bean.User;
import com.ai.heartcloud.core.Service;


/**
 * Created by CodeGenerator on 2018/02/10.
 */
public interface UserService extends Service<User> {

    public boolean checkUser(User user);
}

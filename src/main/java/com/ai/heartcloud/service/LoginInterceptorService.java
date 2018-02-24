package com.ai.heartcloud.service;

import com.ai.heartcloud.bean.User;
import org.springframework.stereotype.Service;

public interface LoginInterceptorService {

    public boolean checkToken(String token);

    public User checkUser(String token);
}

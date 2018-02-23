package com.ai.heartcloud.interceptor;

import com.ai.heartcloud.core.ProjectConstant;
import com.ai.heartcloud.service.LoginInterceptorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    Logger logger = LoggerFactory.getLogger(HandlerInterceptor.class);

    @Autowired
    private LoginInterceptorService loginInterceptorService;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {

    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        boolean tokenFlag = false;
//        logger.info("------LoginInterceptor------");
        //获取cookies
        Cookie[] cookies = request.getCookies();
        if (null != cookies && cookies.length > 0) {
            for (Cookie cookie :cookies){
                if(cookie.getName().equals(ProjectConstant.TOKEN_NAME)){
                    String token = cookie.getValue();
                    if(loginInterceptorService.checkToken(token)){
                        tokenFlag = true;
                        break;
                    }
                }
            }
        }
        if(!tokenFlag){//如果没有登录跳转到登录页面
            response.sendRedirect("/");
        }
        return true;
    }
}
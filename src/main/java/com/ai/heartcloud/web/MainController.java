package com.ai.heartcloud.web;


import com.ai.heartcloud.bean.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MainController {
    Logger logger = LoggerFactory.getLogger(MainController.class);
    @RequestMapping(value = "/")
    public String index(){
        return "/index";
    }

    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request, HttpServletResponse response, User user){
        logger.error("login");
        return "/index";
    }
}

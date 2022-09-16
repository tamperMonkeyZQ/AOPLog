package com.zextra.aoplog.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @ResponseBody
    @GetMapping("/index")
    public String index() {
        return "你好世界";
    }
}

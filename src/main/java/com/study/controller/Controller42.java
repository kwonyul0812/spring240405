package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/main42")
public class Controller42 {

    @GetMapping("sub1")
    @ResponseBody
    public String method1() {

        return "어떤 데이터";
    }

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        return "응답 받음";
    }
}

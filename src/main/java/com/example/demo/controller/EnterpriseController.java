package com.example.demo.controller;

import com.example.demo.entity.Enterprise;
import com.example.demo.service.EnterpriseService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.ws.Action;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class EnterpriseController {
    @Autowired
    EnterpriseService enterpriseService;

    @GetMapping("/")
    public String index(Map<String, Object> map) {
        ArrayList<Enterprise> list = enterpriseService.getAll();
        map.put("list", list);
        return "hello";
    }

    @GetMapping(value = "/page")
    public String page(@RequestParam(value = "pageno", required = false,defaultValue="1") Integer pageno, @RequestParam(value = "name", required = false) String name, Map<String, Object> map) {
//        System.out.println(pageno);
//        System.out.println(name);
        PageInfo<Enterprise> pageInfo = enterpriseService.getOnePageEnterpriseData(pageno, 20, name);
        map.put("name", name);
        map.put("pageInfo", pageInfo);
        return "enterpriselist";
    }
}

package com.example.demo.controller;

import com.example.demo.entity.Enterprise;
import com.example.demo.entity.Product;
import com.example.demo.service.EnterpriseService;
import com.example.demo.service.ProductService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;


    @GetMapping(value = "/product")
    public String page(@RequestParam(value = "pageno", required = false,defaultValue="1") Integer pageno, @RequestParam(value = "czr", required = false) String czr, Map<String, Object> map) {
        PageInfo<Product> pageInfo = productService.getOnePageData(pageno, 5, czr);
        map.put("czr", czr);
        map.put("pageInfo", pageInfo);
        return "productlist";
    }
}

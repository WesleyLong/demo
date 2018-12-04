package com.example.demo.service.impl;

import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.dao.ProductMapper;
import com.example.demo.entity.Enterprise;
import com.example.demo.entity.Product;
import com.example.demo.service.EnterpriseService;
import com.example.demo.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public PageInfo<Product> getOnePageData(Integer pageIndex, Integer pageSize, String czr) {
        PageHelper.startPage(pageIndex, pageSize);
        Map<String, Object> map = new HashMap<>();
        map.put("czr", czr);
        List<Product> list = productMapper.getOnePageData(map);
        return new PageInfo<>(list);
    }
}

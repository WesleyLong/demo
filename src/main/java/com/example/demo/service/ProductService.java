package com.example.demo.service;

import com.example.demo.entity.Product;
import com.github.pagehelper.PageInfo;

import java.util.ArrayList;

public interface ProductService {
    public PageInfo<Product> getOnePageData(Integer pageIndex, Integer pageSize, String czr);
}

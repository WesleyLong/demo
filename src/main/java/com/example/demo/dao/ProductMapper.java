package com.example.demo.dao;

import com.example.demo.entity.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ProductMapper {
    public void insert(Product product);
    public List<Product> getOnePageData(Map<String, Object> map);
}

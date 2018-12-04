package com.example.demo.dao;

import com.example.demo.entity.Department;
import com.example.demo.entity.Enterprise;
import com.example.demo.entity.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Mapper
public interface EnterpriseMapper {
    public void insert(Enterprise Enterprise);
    public Enterprise getById(Integer id);
    public void update(Enterprise Enterprise);
    public void deleteById(Integer id);
    public ArrayList<Enterprise> getAll();
    public List<Enterprise> getOnePageEnterpriseData(Map<String, Object> map);
}
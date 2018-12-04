package com.example.demo.service;

import com.example.demo.entity.Enterprise;
import com.github.pagehelper.PageInfo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface EnterpriseService {
    public ArrayList<Enterprise> getAll();
    public PageInfo<Enterprise> getOnePageEnterpriseData(Integer pageIndex, Integer pageSize, String name);
}

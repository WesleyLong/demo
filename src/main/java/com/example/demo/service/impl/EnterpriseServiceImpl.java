package com.example.demo.service.impl;

import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.entity.Enterprise;
import com.example.demo.service.EnterpriseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private EnterpriseMapper enterpriseMapper;

    @Override
    public ArrayList<Enterprise> getAll() {
        return enterpriseMapper.getAll();
    }

    @Override
    public PageInfo<Enterprise> getOnePageEnterpriseData(Integer pageIndex, Integer pageSize, String name) {
        PageHelper.startPage(pageIndex, pageSize);
        Map<String, Object> map = new HashMap<>();
        map.put("name", name);
        List<Enterprise> list = enterpriseMapper.getOnePageEnterpriseData(map);
        return new PageInfo<>(list);
    }
}

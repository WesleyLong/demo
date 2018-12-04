package com.example.demo.dao;

import com.example.demo.entity.Enterprise;
import com.example.demo.entity.EnterpriseDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface EnterpriseDetailMapper {
    public void insert(EnterpriseDetail enterpriseDetail);
}
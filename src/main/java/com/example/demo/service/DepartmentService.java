package com.example.demo.service;

import com.example.demo.entity.Department;

import java.util.ArrayList;
import java.util.Map;

public interface DepartmentService {


    ArrayList<Department> getUsersByGender(Map<String, Object> map);

}
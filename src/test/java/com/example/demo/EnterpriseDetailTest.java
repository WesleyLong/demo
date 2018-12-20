package com.example.demo;

import com.example.demo.dao.EnterpriseDetailMapper;
import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.entity.Enterprise;
import com.example.demo.entity.EnterpriseDetail;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;
import java.util.ArrayList;

@RunWith(SpringRunner.class)

@SpringBootTest

public class EnterpriseDetailTest {
    @Autowired
    private EnterpriseDetailMapper enterpriseDetailMapper;
    @Autowired
    private EnterpriseMapper enterpriseMapper;

    @Test
    public void testInsert(){
        String url;
        ArrayList<Enterprise> enterpriseArrayList = this.enterpriseMapper.getAll();
        int n=0;
        EnterpriseDetail enterpriseDetail = new EnterpriseDetail();
        for (int i = 0; i < enterpriseArrayList.size(); i++) {
            url = "http://www.aqbz.org/Home/Search/" + enterpriseArrayList.get(i).getUrl();
            Document document = null;
            try {
                document = Jsoup.connect(url).get();
            } catch (IOException e) {
                System.out.println("获取页面失败");
                continue;
            }
            enterpriseDetail.setId(enterpriseArrayList.get(i).getId());
            Elements name = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbName");
            enterpriseDetail.setName(name.text());
            Elements adress = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbAddress");
            enterpriseDetail.setAdress(adress.text());
            Elements zipcode = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbPost");
            enterpriseDetail.setZipcode(zipcode.text());
            Elements contact = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbCommunicator");
            enterpriseDetail.setContact(contact.text());
            Elements phone = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbPhone");
            enterpriseDetail.setPhone(phone.text());
            Elements pic = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_Image1");
            enterpriseDetail.setPic(pic.text());
            try {
                enterpriseDetailMapper.insert(enterpriseDetail);
            } catch (Exception e) {
                System.out.println("数据插入失败"+n);
                n++;
                continue;
            }
        }
        System.out.println(n+"条数据插入失败");
    }
}

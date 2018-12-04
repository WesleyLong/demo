package com.example.demo;

import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.entity.Enterprise;
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

public class EnterpriseTest {


    @Autowired

    private EnterpriseMapper enterpriseMapper;


    @Test

    public void testInsert() throws Exception {
//        String url = "http://www.aqbz.org/Home/Search/All_QY.aspx?t1=search&t2=6&qname=&cname=&sheng=all&type=1";
        String url = "http://www.aqbz.org/Home/Search/All_QY.aspx?t1=search&t2=6&qname=&cname=&sheng=all&type=2";
        while (true) {
            Document document = null;
            try {
                document = Jsoup.connect(url).get();
            } catch (IOException e) {
                System.out.println("获取页面失败");
                continue;
            }
            //抓取class为ABtableDefault的表格中的所有超链接，即本页所有企业列表
            Elements enterpriseList = document.select(".ABtableDefault a[href]");
//        System.out.println(enterpriseList);
            Enterprise enterprise = new Enterprise();

            for (Element e : enterpriseList) {
                enterprise.setName(e.text());
                enterprise.setUrl(e.attr("href"));
//            System.out.println("link : " + e.attr("href"));
//            System.out.println("text : " + e.text());
                try {
                    enterpriseMapper.insert(enterprise);
                } catch (Exception e1) {
                    System.out.println("数据插入失败");
                    continue;
                }
            }

            //获取下一页的链接
            Elements nextLink = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lnkNext");
//            System.out.println(nextLink);

            for (Element link : nextLink) {
                System.out.println("link : " + link.attr("href"));
                url = "http://www.aqbz.org" + link.attr("href");
//                System.out.println("" == link.attr("href"));
//                System.out.println("text : " + link.text());
            }
            if ("http://www.aqbz.org".equals(url)) {
                break;
            }
        }
    }

    @Test

    public void testGetById() {

        Enterprise enterprise = this.enterpriseMapper.getById(1);

        System.out.println(enterprise.getUrl());

    }

    @Test

    public void testGetAll() {

        ArrayList<Enterprise> enterpriseArrayList = this.enterpriseMapper.getAll();
        System.out.println(enterpriseArrayList.size());
        System.out.println(enterpriseArrayList.get(0).getUrl());
//        for (Enterprise enterprise : enterpriseArrayList) {
//            System.out.println(enterprise.getUrl());
//        }
    }


}

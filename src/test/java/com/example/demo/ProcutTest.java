package com.example.demo;

import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.dao.ProductMapper;
import com.example.demo.entity.Enterprise;
import com.example.demo.entity.Product;
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

public class ProcutTest {
    @Autowired
    private EnterpriseMapper enterpriseMapper;
    @Autowired
    private ProductMapper productMapper;

    @Test

    public void testInsert() throws Exception {
        String url;
        Product p = new Product();
        ArrayList<Enterprise> enterpriseArrayList = this.enterpriseMapper.getAll();
        int n=0;
        for (int i = 0; i < enterpriseArrayList.size(); i++) {
            url = "http://www.aqbz.org/Home/Search/" + enterpriseArrayList.get(i).getUrl();
            System.out.println(url);
            Document document = null;
            try {
                document = Jsoup.connect(url).get();
            } catch (IOException e) {
                System.out.println("获取企业页面失败");
                continue;
            }
            Elements productList = document.select(".list-table a[href]");

            for (Element e : productList) {
                String href = "http://www.aqbz.org/Home/Search/" + e.attr("href");
                String id = href.split("id=")[1];
//                System.out.println(id);
                Document d = null;
                try {
                    d = Jsoup.connect(href).get();
                } catch (IOException e1) {
                    System.out.println("获取产品页面失败");
//                    e1.printStackTrace();
                    continue;
                }
                p.setId(id);
                Elements czr = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbczr");
                p.setCzr(czr.text());
                Elements zcdz = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbzcdz");
                p.setZcdz(zcdz.text());
                Elements scdw = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbscdw");
                p.setScdw(scdw.text());
                Elements scdz = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbscdz");
                p.setScdz(scdz.text());
                Elements cpmc = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbcpmc");
                p.setCpmc(cpmc.text());
                Elements ggxh = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbggxh");
                p.setGgxh(ggxh.text());
                Elements aqbzbh = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbaqbzbh");
                p.setAqbzbh(aqbzbh.text());
                Elements yxq = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbyxq");
                p.setYxq(yxq.text());
                Elements bzhyq = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbbzhyq");
                p.setBzhyq(bzhyq.text());
                Elements syfw = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbsyfw");
                p.setSyfw(syfw.text());
                Elements bz = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbbz");
                p.setBz(bz.text());
                Elements abzt = d.select("#ContentPlaceHolder1_ContentPlaceHolder1_lbabzt");
                p.setAbzt(abzt.text());
                try {
                    productMapper.insert(p);
                } catch (Exception e1) {
                    System.out.println(n+"条数据插入失败");
                    e1.printStackTrace();
                    n++;
                    continue;
                }

//            System.out.println(p.text());
//            System.out.println("link : " + e.attr("href"));
//            System.out.println("text : " + e.text());
            }
//            System.out.println(i);
        }
//        System.out.println(n+"条数据插入失败");
    }
    @Test
    public void test(){

        while (true) {
            ArrayList<Enterprise> enterpriseArrayList = this.enterpriseMapper.getAll();
            System.out.println(enterpriseArrayList.get(123).getName());
        }
    }

}
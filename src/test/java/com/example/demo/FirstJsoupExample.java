package com.example.demo;

import java.io.IOException;

import com.example.demo.dao.EnterpriseMapper;
import com.example.demo.entity.Enterprise;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

public class FirstJsoupExample {
    @Autowired
    private static EnterpriseMapper enterpriseMapper;
    public static void main(String[] args) throws IOException {
        Document document = Jsoup.connect("http://www.aqbz.org/Home/Search/All_QY.aspx?type=2&t1=search&t2=6&Page=37&ab=&qname=&cname=&xh=&sheng=all").get();
        //抓取class为ABtableDefault的表格中的所有超链接，即本页所有企业列表
//        Elements enterpriseList = document.select(".ABtableDefault a[href]");
////        System.out.println(enterpriseList);
//        Enterprise enterprise = new Enterprise();
//        for (Element e : enterpriseList)
//        {
//            int id  = 2;
//            enterprise.setId(id);
//            enterprise.setName(e.text());
//            enterprise.setUrl(e.attr("href"));
////            System.out.println("link : " + e.attr("href"));
////            System.out.println("text : " + e.text());
//            enterpriseMapper.insert(enterprise);
//            id++;
//        }

        //获取下一页的链接
        Elements nextLink = document.select("#ContentPlaceHolder1_ContentPlaceHolder1_lnkNext");
        System.out.println(nextLink);
        for (Element link : nextLink)
        {
            System.out.println("link : " + link.attr("href"));
            String url = "http://www.aqbz.org"+link.attr("href");
            System.out.println("http://www.aqbz.org".equals(url));
            System.out.println("text : " + link.text());
        }
    }
}

package com.example.demo;

import com.example.demo.ImageDownload.ImageDownload;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class JsoupTest {
    public static void main(String args[]) {
        //设置需要爬取的网页，这里为方便起见就直接用Jsoup自带的api来爬取网页了
        //这个网页是桂林电子科技大的信息科技学院的学院新闻版块页面
        String url = "https://www.ugirls.com/Models/";
        //声明Document类，来存储爬取到的html文档
        Document doc = null;
        try {
            doc = Jsoup.connect(url).get();
            //调用Jsoup类中的connect()方法，url为需要爬取的页面
            //timeout()来设置超时时间，get()方法来获取响应页面
        } catch (IOException e) {
            e.printStackTrace();
        }

        //System.out.println(doc);//测试用

        //使用select选择器
        Elements elements = doc.select(".model_list_wrap .model_item_content .model_img");

        //System.out.println(elements);//测试用

        for (Element e : elements) {
            //逐条输出新闻信息
            String src = e.attr("src");
            System.out.println(src);
            ImageDownload.downloadPicture(src);
        }

    }
}

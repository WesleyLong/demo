package com.example.demo.ImageDownload;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class ugirls {
    public static void main(String[] args) {
        String url = "https://www.ugirls.com/Models/";
        Document document = null;
        try {
            document = Jsoup.connect(url).get();
        } catch (IOException e) {
            System.out.println("获取页面失败");
        }
        Elements enterpriseList = document.select(".model_list_wrap .model_item_content .model_img");
        for (Element e : enterpriseList) {
            String src = e.attr("src");
            if(!src.contains("static")){
//                src = src.split("end/")[1];
//                System.out.println(src);
                downloadPicture(src);
            }

//
        }

    }
    //链接url下载图片
    private static void downloadPicture(String src) {
        URL url = null;

        try {
            url = new URL(src);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());

            String imageName =  "C:/picture/ugirls/"+src.split("end/")[1]+".jpg";

            FileOutputStream fileOutputStream = new FileOutputStream(new File(imageName));
            ByteArrayOutputStream output = new ByteArrayOutputStream();

            byte[] buffer = new byte[1024];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            byte[] context=output.toByteArray();
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

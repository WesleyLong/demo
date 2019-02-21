package com.example.demo;

import org.apache.tomcat.util.http.fileupload.FileUtils;

import java.io.*;
import java.util.ArrayList;
import java.util.List;


public class UnionFile {
    public static boolean unionFile(String outfile, String dictionary) throws IOException {
        boolean result = false;
        List<File> fileList = getFiles(dictionary);
        File fout = new File(outfile);
        FileWriter fw = new FileWriter(fout);
        for (File f : fileList) {
//            FileReader fr = new FileReader(f);
            BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream(f),"GBK"));
//            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                fw.append(line + "\n");
                line = br.readLine();
            }
//            fr.close();
        }
        fw.close();
        result = true;
        return result;
    }

    public static List<File> getFiles(String path) {
        File root = new File(path);
        List<File> files = new ArrayList<>();
        if (!root.isDirectory()) {
            files.add(root);
        } else {
            File[] subFiles = root.listFiles();
            for (File f : subFiles) {
                files.addAll(getFiles(f.getAbsolutePath()));
            }
        }
        return files;
    }

    public static void main(String[] args) throws Exception {
        unionFile("C:\\1.txt", "C:\\\\Users\\\\Administrator\\\\Desktop\\\\用户目录\\\\我的文档\\\\Tencent Files\\\\278253855\\\\FileRecv\\\\《金庸小说全集 14部》全（TXT）作者：金庸\\\\碧血剑");
//        List<File> files = getFiles("C:\\Users\\Administrator\\Desktop\\用户目录\\我的文档\\Tencent Files\\278253855\\FileRecv\\《金庸小说全集 14部》全（TXT）作者：金庸\\碧血剑");
//        for (int i = 0; i < files.size(); i++) {
//            System.out.println(files.get(i).getName());
//        }
//        BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream("C:\\2.TXT"),"GBK"));
//        String line = br.readLine();
//        while (line != null) {
//            System.out.println(line);
//            line = br.readLine();
//        }
    }
}

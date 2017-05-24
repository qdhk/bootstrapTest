package com.nr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by nr on 2017/05/08 0008.
 */
@Controller
@RequestMapping(value = "/view")
public class MyTestController {

    @RequestMapping(value = "/upfile")
    public String index(){
        return "upfile";
    }

    @RequestMapping(value = "/doUpfile",method = RequestMethod.POST)
    public String upload(@RequestParam(value = "myfile",required = false)MultipartFile file, HttpServletRequest request){
        System.out.println("开始");
        long  startTime=System.currentTimeMillis();
        String path=request.getSession().getServletContext().getRealPath("upload");
        String fileName=file.getOriginalFilename();
        File targetFile=new File(path,fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        long endTime= System.currentTimeMillis();
        System.out.println("结束，耗时："+String.valueOf(endTime-startTime)+"ms");
        return "upfile";
    }
}

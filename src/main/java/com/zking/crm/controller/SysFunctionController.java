/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SysFunctionController
 * Author:   JiangYunWen
 * Date:     2018/3/6 21:10
 * Description: sss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.controller;

import com.zking.crm.biz.ISysFunctionBiz;
import com.zking.crm.model.SysFunction;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈sss〉
 *
 * @author JiangYunWen
 * @create 2018/3/6
 * @since 1.0.0
 */
@Controller
@ResponseBody
public class SysFunctionController {

    @Autowired
    private ISysFunctionBiz iSysFunctionBiz;

    private SysFunction sysFunction;

    @RequestMapping("/list")
    public void list(Model model, HttpSession session, PageBean pageBean, HttpServletRequest request, HttpServletResponse response){
        List<SysFunction> dataList = iSysFunctionBiz.list(sysFunction);
        //设置页面数据
        Map<String,Object> jsonMap = new HashMap<String,Object>();
        jsonMap.put("rows", dataList);

//        try {
//            //设置页面不缓存
//            response.setContentType("application/json");
//            response.setHeader("Pragma", "No-cache");
//            response.setHeader("Cache-Control", "no-cache");
//            response.setCharacterEncoding("UTF-8");
//            PrintWriter out= null;
//            out = response.getWriter();
//            out.print(JSONUtil.toJSONString(jsonMap));
//            out.flush();
//            out.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }
}

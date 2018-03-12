/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SalChanceController
 * Author:   JiangYunWen
 * Date:     2018/3/9 14:41
 * Description: ddd
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.controller;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.model.SalChance;
import com.zking.crm.model.SalPlan;
import com.zking.crm.util.JsonDateValueProcessor;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.RsponseUtil;
import com.zking.crm.util.StringUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈ddd〉
 *
 * @author JiangYunWen
 * @create 2018/3/9
 * @since 1.0.0
 */
@Controller
@RequestMapping("/sal")
public class SalChanceController {

    @Autowired
    private ISalChanceBiz salChanceBiz;

    private SalPlan salPlan = new SalPlan();

    @RequestMapping("/list")
    public String list(SalChance salChance, HttpServletResponse res) throws Exception{
        PageBean pageBean=new PageBean();
        pageBean.setCurPage(1);
        pageBean.setPageRecord(2);

        Map<String,Object> map=new HashMap<String,Object>();
        map.put("usrName", StringUtil.formatLike(salChance.getChcCustName()));


        List<SalChance> list = salChanceBiz.list(map);

        JSONObject result=new JSONObject();


        JsonConfig config = new JsonConfig();
        config.setIgnoreDefaultExcludes(false);
        config.registerJsonValueProcessor(java.util.Date.class, new JsonDateValueProcessor("yyyy-MM-dd HH:mm:ss"));

        JSONArray jsonArray=JSONArray.fromObject(list,config);
        result.put("rows", jsonArray);

        RsponseUtil.write(res, result);
        return null;
    }



    @RequestMapping("/saveSal")
    public String add(SalChance salChance, HttpServletResponse res) throws Exception{
        System.out.println("saveSal进来了");

        if (salChance.getChcId() == null) {
            salChanceBiz.insertSelective(salChance);
        }else{
            salChanceBiz.updateByPrimaryKeySelective(salChance);
        }
        System.out.println("saveSal出来了");
        JSONObject jsonObject = new JSONObject();
        RsponseUtil.write(res, jsonObject);

        return null;
    }

    @RequestMapping("/updateSal")
    public String updateSal(SalChance salChance, HttpServletResponse res) throws Exception{
        salChance.setChcStatus(2);
        salChanceBiz.updateByPrimaryKeySelective(salChance);
        JSONObject jsonObject = new JSONObject();
        RsponseUtil.write(res, jsonObject);
        return null;
    }


    @RequestMapping("/delSal")
    public String delete(SalChance salChance,HttpServletResponse res) throws Exception{

        JSONObject jsonObject = new JSONObject();
        salChanceBiz.deleteByPrimaryKey(salChance.getChcId());
        jsonObject.put("success", true);
        RsponseUtil.write(res, jsonObject);
        return null;
    }


}

/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SalPlanController
 * Author:   JiangYunWen
 * Date:     2018/3/10 19:41
 * Description: ss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.controller;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.biz.ISalPlanBiz;
import com.zking.crm.model.SalChance;
import com.zking.crm.model.SalPlan;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.RsponseUtil;
import com.zking.crm.util.StringUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈ss 〉
 *
 * @author JiangYunWen
 * @create 2018/3/10
 * @since 1.0.0
 */
@Controller
@RequestMapping("/plan")
public class SalPlanController {

    @Autowired
    private ISalPlanBiz salPlanBiz;

    @Autowired
    private ISalChanceBiz salChanceBiz;

    private SalChance salChance = new SalChance();

//    @RequestMapping("/plist")
//    public String list(Model model,HttpServletRequest res){
//
//        List<SalChance> list = salChanceBiz.planlist(salChance);
//        model.addAttribute("list", list);
//
//        return "~sale/dev";
//    }


    @RequestMapping("/list")
    public String list(SalChance salChance, HttpServletResponse res) throws Exception{

//        Map<String,Object> map=new HashMap<String,Object>();
//        map.put("usrName", StringUtil.formatLike(salChance.getChcCustName()));


        List<SalChance> list = salChanceBiz.planlist(salChance);

        JSONObject result=new JSONObject();
        JSONArray jsonArray=JSONArray.fromObject(list);
        result.put("rows", jsonArray);

        RsponseUtil.write(res, result);
        return null;
    }


    @RequestMapping("/toDev")
    public String toDev(Model model,HttpServletRequest res){
        return "~sale/dev";
    }

    @RequestMapping("/savePlan")
    public String add(SalChance salChance, SalPlan salPlan, HttpServletResponse res,HttpServletRequest request) throws Exception{

        String ss = request.getParameter("cc");
        String chcId = request.getParameter("chcId");
        Date d = new Date();
        salPlan.setPlaDate(d);
        salPlan.setPlaTodo(ss);
        salPlan.setPlaChcId(Integer.parseInt(chcId));

        salPlanBiz.insertSelective(salPlan);


        JSONObject jsonObject = new JSONObject();

//        jsonObject.put("success", true);
        RsponseUtil.write(res, jsonObject);

        return null;
    }


    @RequestMapping("/editPlan")
    public String editPlan(SalChance salChance, SalPlan salPlan, HttpServletResponse res,HttpServletRequest request) throws Exception{

        String ss = request.getParameter("aa");
        String chcId = request.getParameter("chcId");

        salPlan.setPlaChcId(Integer.parseInt(chcId));
        salPlan.setPlaResult(ss);

        salPlanBiz.updateByPrimaryKeySelective(salPlan);


        JSONObject jsonObject = new JSONObject();

        jsonObject.put("success", true);
        RsponseUtil.write(res, jsonObject);

        return "toDev";
    }

}

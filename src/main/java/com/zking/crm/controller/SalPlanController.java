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
import com.zking.crm.util.RsponseUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @RequestMapping("/plist")
    public String list(Model model,HttpServletRequest res){

        List<SalChance> list = salChanceBiz.planlist(salChance);
        model.addAttribute("list", list);

        return "~sale/dev";
    }

    @RequestMapping("/pload")
    public String pload(Model model,SalChance ss,HttpServletRequest res){
        Integer s =Integer.parseInt(res.getParameter("chcId"));
        System.out.println(s+":0000000");
        SalChance load = salChanceBiz.selectByPrimaryKey(s);
        model.addAttribute("load", load);

        return "~sale/dev_plan";
    }

//    @RequestMapping("/toDev")
//    public String toDev(Model model,HttpServletRequest res){
//        return "~sale/dev_plan";
//    }

    @RequestMapping("/savePlan")
    public String add(SalPlan salPlan, HttpServletResponse res) throws Exception{
        System.out.println(salPlan.getPlaDate());

        System.out.println(salPlan.getPlaTodo());
        salPlanBiz.insertSelective(salPlan);

        System.out.println("saveplan出来了");

        return "pload";
    }

}

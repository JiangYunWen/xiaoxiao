/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SysUserController
 * Author:   JiangYunWen
 * Date:     2018/3/7 15:52
 * Description: sss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.controller;


import com.zking.crm.biz.ISysUser;
import com.zking.crm.model.SysUser;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.RsponseUtil;
import com.zking.crm.util.StringUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈sss〉
 *
 * @author JiangYunWen
 * @create 2018/3/7
 * @since 1.0.0
 */
@Controller
@RequestMapping("/sys")
public class SysUserController {

    @Autowired
    private ISysUser iSysUser;

    @RequestMapping("/list")
    public String list(@RequestParam(value="page",required=false) String page, @RequestParam(value="rows",required=false) String rows, SysUser sysUser, HttpServletResponse res) throws Exception{
        PageBean pageBean=new PageBean();
        pageBean.setCurPage(Integer.parseInt(page));
        pageBean.setPageRecord(Integer.parseInt(rows));

        Map<String,Object> map=new HashMap<String,Object>();
        map.put("usrName", StringUtil.formatLike(sysUser.getUsrName()));

        map.put("start", pageBean.getCurPage());
        map.put("size", pageBean.getPageRecord());

        List<SysUser> userList=iSysUser.list(map);
//        Long total=iSysUser.getTotal(map);
        JSONObject result=new JSONObject();
        JSONArray jsonArray=JSONArray.fromObject(userList);
        result.put("rows", jsonArray);
//        result.put("total", total);
        RsponseUtil.write(res, result);
        return null;
    }

    @RequestMapping("/toindex")
    public String todd(){
        return "index";
    }

    @RequestMapping("/addUser")
    public String addUser(SysUser sysUser, HttpServletResponse res) throws Exception{
        System.out.println("进来了");
        if (sysUser.getUsrId() == null) {
            iSysUser.insertSelective(sysUser);
        }else{
            iSysUser.updateByPrimaryKeySelective(sysUser);
            sysUser.setUsrFlag(1);
        }
        JSONObject jsonObject = new JSONObject();
        RsponseUtil.write(res, jsonObject);
        return null;
    }

    @RequestMapping("/delUser")
    public String delete(SysUser sysUser,HttpServletResponse res) throws Exception{

        JSONObject jsonObject = new JSONObject();
        iSysUser.deleteByPrimaryKey(sysUser.getUsrId());

        jsonObject.put("success", true);
        RsponseUtil.write(res, jsonObject);
        return null;
    }

}

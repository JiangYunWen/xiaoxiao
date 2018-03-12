/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: sss
 * Author:   JiangYunWen
 * Date:     2018/3/12 17:06
 * Description: sss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * 〈一句话功能简述〉<br> 
 * 〈sss〉
 *
 * @author JiangYunWen
 * @create 2018/3/12
 * @since 1.0.0
 */
public class sss {
    /**
     * 以UUID的策略生成一个长度为32的字符串，在同一时空中具有唯一性。
     * @return UUID128位长度字符串
     */
    public static String getUUIDString() {
        String id = UUID.randomUUID().toString();
        id = id.replace("-", "_");
        return id;
    }

    public static void main(String[] args) {
        System.out.println(sss.getUUIDString());
    }
}
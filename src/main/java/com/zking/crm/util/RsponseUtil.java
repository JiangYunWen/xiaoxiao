/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: RsponseUtil
 * Author:   JiangYunWen
 * Date:     2018/3/7 16:01
 * Description: ssss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.util;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 〈一句话功能简述〉<br> 
 * 〈ssss〉
 *
 * @author JiangYunWen
 * @create 2018/3/7
 * @since 1.0.0
 */
public class RsponseUtil {
    public static void write(HttpServletResponse response, Object object)throws Exception{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        out.println(object);
        out.flush();
        out.close();
    }
}

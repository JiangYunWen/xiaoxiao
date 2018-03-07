/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: StringUtil
 * Author:   JiangYunWen
 * Date:     2018/3/7 16:04
 * Description: ss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.util;

/**
 * 〈一句话功能简述〉<br> 
 * 〈ss〉
 *
 * @author JiangYunWen
 * @create 2018/3/7
 * @since 1.0.0
 */
public class StringUtil {
    /**
     * 判断是否是空
     * @param str
     * @return
     */
    public static boolean isEmpty(String str){
        if(str==null||"".equals(str.trim())){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 判断是否不是空
     * @param str
     * @return
     */
    public static boolean isNotEmpty(String str){
        if((str!=null)&&!"".equals(str.trim())){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 格式化模糊查询
     * @param str
     * @return
     */
    public static String formatLike(String str){
        if(isNotEmpty(str)){
            return "%"+str+"%";
        }else{
            return null;
        }
    }
}

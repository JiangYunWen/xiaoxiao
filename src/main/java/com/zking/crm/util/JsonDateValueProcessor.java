/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: JsonDateValueProcessor
 * Author:   JiangYunWen
 * Date:     2018/3/12 12:17
 * Description: ss
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.util;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 〈一句话功能简述〉<br> 
 * 〈ss〉
 *
 * @author JiangYunWen
 * @create 2018/3/12
 * @since 1.0.0
 */
public class JsonDateValueProcessor implements JsonValueProcessor {
    /**
     * datePattern
     */
    private String datePattern = "yyyy-MM-dd";

    public JsonDateValueProcessor() {
        super();
    }

    /**
     * 可以根据构造传入格式化的格式
     */
    public JsonDateValueProcessor(String format) {
        super();
        if(format != null && !"".equals(format)){
            this.datePattern = format;
        }
    }
    @Override
    public Object processArrayValue(Object value, JsonConfig jsonConfig) {
        return process(value);
    }
    @Override
    public Object processObjectValue(String key, Object value,
                                     JsonConfig jsonConfig) {
        return process(value);
    }
    //用于格式化date类型的值
    private Object process(Object value) {
        try {
            if (value instanceof Date) {
                SimpleDateFormat sdf = new SimpleDateFormat(datePattern,
                        Locale.CHINESE);
                return sdf.format((Date) value);
            }
            return value == null ? "" : value.toString();
        } catch (Exception e) {
            return "";
        }

    }

    /**
     * @return the datePattern
     */
    public String getDatePattern() {
        return datePattern;
    }

    /**
     * @param pDatePattern the datePattern to set
     */
    public void setDatePattern(String pDatePattern) {
        datePattern = pDatePattern;
    }

}

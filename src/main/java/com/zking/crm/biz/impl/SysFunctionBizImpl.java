/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SysFunctionBizImpl
 * Author:   JiangYunWen
 * Date:     2018/3/6 20:58
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISysFunctionBiz;
import com.zking.crm.mapper.SysFunctionMapper;
import com.zking.crm.model.SysFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author JiangYunWen
 * @create 2018/3/6
 * @since 1.0.0
 */
@Service
public class SysFunctionBizImpl implements ISysFunctionBiz {

    @Autowired
    private SysFunctionMapper sysFunctionMapper;

    @Override
    public int deleteByPrimaryKey(Integer functionId) {
        return 0;
    }

    @Override
    public int insert(SysFunction record) {
        return sysFunctionMapper.insertSelective(record);
    }

    @Override
    public int insertSelective(SysFunction record) {
        return 0;
    }

    @Override
    public SysFunction selectByPrimaryKey(Integer functionId) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(SysFunction record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(SysFunction record) {
        return 0;
    }

    @Override
    public List<SysFunction> list(SysFunction sysFunction) {
        return sysFunctionMapper.list(sysFunction);
    }
}

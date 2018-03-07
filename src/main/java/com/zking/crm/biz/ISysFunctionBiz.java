package com.zking.crm.biz;

import com.zking.crm.model.SysFunction;

import java.util.List;

public interface ISysFunctionBiz {

    int deleteByPrimaryKey(Integer functionId);

    int insert(SysFunction record);

    int insertSelective(SysFunction record);

    SysFunction selectByPrimaryKey(Integer functionId);

    int updateByPrimaryKeySelective(SysFunction record);

    int updateByPrimaryKey(SysFunction record);

    List<SysFunction> list(SysFunction sysFunction);
}

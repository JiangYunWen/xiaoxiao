package com.zking.crm.mapper;

import com.zking.crm.model.SysFunction;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SysFunctionMapper {
    int deleteByPrimaryKey(Integer functionId);

    int insert(SysFunction record);

    int insertSelective(SysFunction record);

    SysFunction selectByPrimaryKey(Integer functionId);

    int updateByPrimaryKeySelective(SysFunction record);

    int updateByPrimaryKey(SysFunction record);

    List<SysFunction> list(SysFunction sysFunction);
}
package com.zking.crm.mapper;

import com.zking.crm.model.SysRoleFunction;
import org.springframework.stereotype.Repository;

@Repository
public interface SysRoleFunctionMapper {
    int deleteByPrimaryKey(Integer rfId);

    int insert(SysRoleFunction record);

    int insertSelective(SysRoleFunction record);

    SysRoleFunction selectByPrimaryKey(Integer rfId);

    int updateByPrimaryKeySelective(SysRoleFunction record);

    int updateByPrimaryKey(SysRoleFunction record);
}
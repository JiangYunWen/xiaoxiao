package com.zking.crm.mapper;

import com.zking.crm.model.SysRole;
import org.springframework.stereotype.Repository;

@Repository
public interface SysRoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(SysRole record);

    int insertSelective(SysRole record);

    SysRole selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(SysRole record);

    int updateByPrimaryKey(SysRole record);
}
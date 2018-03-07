package com.zking.crm.mapper;

import com.zking.crm.model.SysRoleRight;
import org.springframework.stereotype.Repository;

@Repository
public interface SysRoleRightMapper {
    int deleteByPrimaryKey(Integer rfId);

    int insert(SysRoleRight record);

    int insertSelective(SysRoleRight record);

    SysRoleRight selectByPrimaryKey(Integer rfId);

    int updateByPrimaryKeySelective(SysRoleRight record);

    int updateByPrimaryKey(SysRoleRight record);
}
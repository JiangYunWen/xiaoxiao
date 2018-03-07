package com.zking.crm.mapper;

import com.zking.crm.model.SysUser;
import org.springframework.stereotype.Repository;

@Repository
public interface SysUserMapper {
    int deleteByPrimaryKey(Integer usrId);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Integer usrId);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);
}
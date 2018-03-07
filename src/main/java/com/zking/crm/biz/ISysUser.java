package com.zking.crm.biz;

import com.zking.crm.model.SysUser;

import java.util.List;
import java.util.Map;

public interface ISysUser {

    int deleteByPrimaryKey(Integer usrId);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Integer usrId);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

    List<SysUser> list(SysUser sysUser);

}

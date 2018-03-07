/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SysUserImpl
 * Author:   JiangYunWen
 * Date:     2018/3/7 15:49
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.biz.impl;

import com.fasterxml.jackson.databind.annotation.JsonAppend;
import com.zking.crm.biz.ISysUser;
import com.zking.crm.mapper.SysUserMapper;
import com.zking.crm.model.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author JiangYunWen
 * @create 2018/3/7
 * @since 1.0.0
 */
@Service
public class SysUserImpl implements ISysUser {

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public int deleteByPrimaryKey(Integer usrId) {
        return sysUserMapper.deleteByPrimaryKey(usrId);
    }

    @Override
    public int insert(SysUser record) {
        return sysUserMapper.insert(record);
    }

    @Override
    public int insertSelective(SysUser record) {
        return sysUserMapper.insertSelective(record);
    }

    @Override
    public SysUser selectByPrimaryKey(Integer usrId) {
        return sysUserMapper.selectByPrimaryKey(usrId);
    }

    @Override
    public int updateByPrimaryKeySelective(SysUser record) {
        return sysUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysUser record) {
        return sysUserMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<SysUser> list(SysUser sysUser) {
        return sysUserMapper.list(sysUser);
    }
}

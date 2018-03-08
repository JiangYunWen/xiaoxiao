package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISysUser;
import com.zking.crm.model.SysUser;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

public class SysUserImplTest extends BaseTest {

    @Autowired
    private ISysUser iSysUser;

    private SysUser sysUser;



    @Before

    public void setUp() throws Exception {
        sysUser = new SysUser();
    }

    @Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @Test
    public void insert() throws Exception {
        sysUser.setUsrName("奥拉夫");
        sysUser.setUsrPassword("123");
        sysUser.setUsrRoleId(0);
        iSysUser.insertSelective(sysUser);
    }

    @Test
    public void insertSelective() throws Exception {
    }

    @Test
    public void selectByPrimaryKey() throws Exception {
    }

    @Test
    public void updateByPrimaryKeySelective() throws Exception {
        sysUser.setUsrId(4);
        sysUser.setUsrName("西施");
        iSysUser.updateByPrimaryKeySelective(sysUser);
    }

//    @Test
//    public void list() throws Exception {
//        List<SysUser> list = iSysUser.list(sysUser);
//        for (SysUser l : list) {
//            System.out.println(l);
//        }

//    }
}
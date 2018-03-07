package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISysFunctionBiz;
import com.zking.crm.model.SysFunction;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class SysFunctionBizImplTest extends BaseTest {

    @Autowired
    private ISysFunctionBiz sysFunctionBiz;

    private SysFunction sysFunction;

    @Before
    public void setUp() throws Exception {
        sysFunction = new SysFunction();
    }

    @Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @Test
    public void insert() throws Exception {
        sysFunction.setFunctionName("营销");
        sysFunction.setPath("......");
        sysFunction.setParameter("0304");
        sysFunction.setMethod("execute");
        sysFunction.setFunctionDesc("营销的功能");
        sysFunctionBiz.insert(sysFunction);
    }

    @Test
    public void insertSelective() throws Exception {
    }

    @Test
    public void selectByPrimaryKey() throws Exception {
    }

    @Test
    public void updateByPrimaryKeySelective() throws Exception {
    }

    @Test
    public void updateByPrimaryKey() throws Exception {
    }

    @Test
    public void list() throws Exception {
        List<SysFunction> list = sysFunctionBiz.list(sysFunction);
        for (SysFunction l : list) {
            System.out.println(l);
        }

    }

}
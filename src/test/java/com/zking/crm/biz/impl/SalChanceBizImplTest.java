package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.model.SalChance;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class SalChanceBizImplTest extends BaseTest {

    @Autowired
    private ISalChanceBiz salChanceBiz;

    private SalChance salChance;

    @Before
    public void setUp() throws Exception {
        salChance = new SalChance();
    }

    @Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @Test
    public void insert() throws Exception {
    }

    @Test
    public void insertSelective() throws Exception {
        salChance.setChcCustName("aa");
        salChance.setChcSource("aa");
        salChance.setChcRate(65);
        salChance.setChcTitle("aa");
        salChance.setChcLinkman("aa");
        salChance.setChcTel("5555555555");
        salChance.setChcDesc("aa");
        salChance.setChcCreateBy("dd");
        salChanceBiz.insertSelective(salChance);
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

}
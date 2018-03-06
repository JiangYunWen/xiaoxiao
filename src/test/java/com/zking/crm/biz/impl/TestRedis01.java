package com.zking.crm.biz.impl;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.awt.image.Kernel;
import java.util.List;

public class TestRedis01 extends BaseTest{
//    @Autowired
//    private RedisUtil redisUtil;
//
//    @Autowired
//    private IFwxxBiz fwxxBiz;
//
//    private Fwxx fwxx;
//
//    @Before
//    public void setUp() throws Exception {
//        fwxx = new Fwxx();
//    }
//
//    @Test
//    public void list() throws Exception {
//        List<Fwxx> list = fwxxBiz.list(fwxx, null);
//        for (Fwxx f : list) {
//            System.out.println(f);
//        }
//    }
//
//    @Test
//    public void load() throws Exception {
//        fwxx.setFwbh(7);
//
//        //先到redis查-->mybatis
//        Fwxx f = (Fwxx) redisUtil.get(fwxx.getClass().getName()+"_"+fwxx.getYhbh());
//        if (null == f) {
//            f = fwxxBiz.updateload(fwxx);
//            if (null != f) {
//                redisUtil.set(fwxx.getClass().getName()+"_"+fwxx.getYhbh(), f);
//            }
//        }
//
////        Fwxx f = fwxxBiz.updateload(fwxx);
//
//        System.out.println(f);
//    }






}
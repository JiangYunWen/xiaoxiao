/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SalPlanBizImpl
 * Author:   JiangYunWen
 * Date:     2018/3/10 19:39
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalPlanBiz;
import com.zking.crm.mapper.SalPlanMapper;
import com.zking.crm.model.SalPlan;
import org.omg.CORBA.Object;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.print.PSPrinterJob;

import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author JiangYunWen
 * @create 2018/3/10
 * @since 1.0.0
 */
@Service
public class SalPlanBizImpl implements ISalPlanBiz {

    @Autowired
    private SalPlanMapper salPlanMapper;

    @Override
    public int deleteByPrimaryKey(Integer plaId) {
        return salPlanMapper.deleteByPrimaryKey(plaId);
    }

    @Override
    public int insert(SalPlan record) {
        return salPlanMapper.insert(record);
    }

    @Override
    public int insertSelective(SalPlan record) {
        return salPlanMapper.insertSelective(record);
    }

    @Override
    public SalPlan selectByPrimaryKey(Integer plaId) {
        return salPlanMapper.selectByPrimaryKey(plaId);
    }

    @Override
    public int updateByPrimaryKeySelective(SalPlan record) {
        return salPlanMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SalPlan record) {
        return salPlanMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<SalPlan> list(Map<String, Object> map) {
        return salPlanMapper.list(map);
    }
}

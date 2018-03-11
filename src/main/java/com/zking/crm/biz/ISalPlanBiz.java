package com.zking.crm.biz;

import com.zking.crm.model.SalPlan;
import org.omg.CORBA.Object;

import java.util.List;
import java.util.Map;

public interface ISalPlanBiz {
    int deleteByPrimaryKey(Integer plaId);

    int insert(SalPlan record);

    int insertSelective(SalPlan record);

    SalPlan selectByPrimaryKey(Integer plaId);

    int updateByPrimaryKeySelective(SalPlan record);

    int updateByPrimaryKey(SalPlan record);

    List<SalPlan> list(Map<String, Object> map);
}

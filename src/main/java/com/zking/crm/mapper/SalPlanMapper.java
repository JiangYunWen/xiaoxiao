package com.zking.crm.mapper;

import com.zking.crm.model.SalPlan;
import org.omg.CORBA.Object;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface SalPlanMapper {
    int deleteByPrimaryKey(Integer plaId);

    int insert(SalPlan record);

    int insertSelective(SalPlan record);

    SalPlan selectByPrimaryKey(Integer plaId);

    int updateByPrimaryKeySelective(SalPlan record);

    int updateByPrimaryKey(SalPlan record);

    List<SalPlan> list(Map<String, Object> map);
}
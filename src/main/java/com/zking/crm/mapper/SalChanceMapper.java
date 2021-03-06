package com.zking.crm.mapper;

import com.zking.crm.model.SalChance;
import com.zking.crm.model.SalPlan;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface SalChanceMapper {
    int deleteByPrimaryKey(Integer chcId);

    int insert(SalChance record);

    int insertSelective(SalChance record);

    SalChance selectByPrimaryKey(Integer chcId);

    int updateByPrimaryKeySelective(SalChance record);

    int updateByPrimaryKey(SalChance record);

    List<SalChance> list(Map<String, Object> map);

    List<SalChance> planlist(SalChance salChance);
}
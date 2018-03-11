package com.zking.crm.biz;

import com.zking.crm.model.SalChance;

import java.util.List;
import java.util.Map;

public interface ISalChanceBiz {
    int deleteByPrimaryKey(Integer chcId);

    int insert(SalChance record);

    int insertSelective(SalChance record);

    SalChance selectByPrimaryKey(Integer chcId);

    int updateByPrimaryKeySelective(SalChance record);

    int updateByPrimaryKey(SalChance record);

    List<SalChance> list(Map<String, Object> map);

    List<SalChance> planlist(SalChance salChance);
}

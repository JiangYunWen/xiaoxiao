package com.zking.crm.mapper;

import com.zking.crm.model.CstActivity;
import org.springframework.stereotype.Repository;

@Repository
public interface CstActivityMapper {
    int deleteByPrimaryKey(Integer atvId);

    int insert(CstActivity record);

    int insertSelective(CstActivity record);

    CstActivity selectByPrimaryKey(Integer atvId);

    int updateByPrimaryKeySelective(CstActivity record);

    int updateByPrimaryKey(CstActivity record);
}
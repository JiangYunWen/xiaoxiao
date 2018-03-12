package com.zking.crm.mapper;

import com.zking.crm.model.CstLinkman;
import org.springframework.stereotype.Repository;

@Repository
public interface CstLinkmanMapper {
    int deleteByPrimaryKey(Integer lkmId);

    int insert(CstLinkman record);

    int insertSelective(CstLinkman record);

    CstLinkman selectByPrimaryKey(Integer lkmId);

    int updateByPrimaryKeySelective(CstLinkman record);

    int updateByPrimaryKey(CstLinkman record);
}
package com.zking.crm.mapper;

import com.zking.crm.model.SysRight;
import org.springframework.stereotype.Repository;

@Repository
public interface SysRightMapper {
    int deleteByPrimaryKey(String rightCode);

    int insert(SysRight record);

    int insertSelective(SysRight record);

    SysRight selectByPrimaryKey(String rightCode);

    int updateByPrimaryKeySelective(SysRight record);

    int updateByPrimaryKey(SysRight record);
}
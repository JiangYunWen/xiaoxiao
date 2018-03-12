package com.zking.crm.mapper;

import com.zking.crm.model.CstCustomer;
import org.springframework.stereotype.Repository;

@Repository
public interface CstCustomerMapper {
    int deleteByPrimaryKey(String custNo);

    int insert(CstCustomer record);

    int insertSelective(CstCustomer record);

    CstCustomer selectByPrimaryKey(String custNo);

    int updateByPrimaryKeySelective(CstCustomer record);

    int updateByPrimaryKey(CstCustomer record);
}
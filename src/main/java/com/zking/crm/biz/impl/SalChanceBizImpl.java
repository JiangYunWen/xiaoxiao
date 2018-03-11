/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: SalChanceBizImpl
 * Author:   JiangYunWen
 * Date:     2018/3/9 14:37
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.mapper.SalChanceMapper;
import com.zking.crm.model.SalChance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author JiangYunWen
 * @create 2018/3/9
 * @since 1.0.0
 */
@Service
public class SalChanceBizImpl implements ISalChanceBiz {

    @Autowired
    private SalChanceMapper salChanceMapper;

    @Override
    public List<SalChance> list(Map<String, Object> map) {
        return salChanceMapper.list(map);
    }

    @Override
    public int deleteByPrimaryKey(Integer chcId) {
        return salChanceMapper.deleteByPrimaryKey(chcId);
    }

    @Override
    public int insert(SalChance record) {
        return salChanceMapper.insert(record);
    }

    @Override
    public int insertSelective(SalChance record) {
        return salChanceMapper.insertSelective(record);
    }

    @Override
    public SalChance selectByPrimaryKey(Integer chcId) {
        return salChanceMapper.selectByPrimaryKey(chcId);
    }

    @Override
    public int updateByPrimaryKeySelective(SalChance record) {
        return salChanceMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SalChance record) {
        return salChanceMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<SalChance> planlist(SalChance salChance) {
        return salChanceMapper.planlist(salChance);
    }
}

package com.zking.crm.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
/**
 * @描述: 静态注入中间类，解决RedisCache中RedisTemplate的静态注入，从而使MyBatis实现第三方缓存
 */
public class RedisCacheTransfer {

    @Autowired
    public void setRedisTemplate(RedisTemplate<String, Object> redisTemplate) {
        RedisCache.setRedisTemplate(redisTemplate);
    }

}
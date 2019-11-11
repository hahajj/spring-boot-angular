package com.web.cache;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;


@Component
public class RedisManager {

    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    /**

     */
    public String get(String key){
        return redisTemplate.opsForValue().get(key);
    }

    /**
     */
    public void set(String key, String value){
        redisTemplate.opsForValue().set(key,value);
    }

    /**
     */
    public void setex(String key, String value){
        /*redisTemplate.opsForValue().set(key,value);*/
        redisTemplate.opsForValue().set(key,value,1800,TimeUnit.SECONDS);
        /*redisTemplate.expire(key,timeToLiveSeconds, TimeUnit.SECONDS);*/
    }

    /**
     */
    public void del(String key){
        redisTemplate.delete(key);
    }
}

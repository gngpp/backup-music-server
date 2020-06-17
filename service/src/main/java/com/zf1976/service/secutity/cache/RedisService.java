package com.zf1976.service.secutity.cache;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.*;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @author mac
 * Create by Ant on 2020/6/17 7:08 下午
 */
@Service
public class RedisService {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;


    /**
     * set value
     *
     * @param key key
     * @param value value
     */
    public void set(String key,String value){
        final ValueOperations<String, String> ops = stringRedisTemplate.opsForValue();
        ops.set(key, value, 1,TimeUnit.HOURS);
    }

    /**
     * get value
     *
     * @param key key
     * @return object
     */
    public Object get(String key) {
        final ValueOperations<String, String> ops = stringRedisTemplate.opsForValue();
        return ops.get(key);
    }

    /**
     * delete
     *
     * @param key key
     * @return boolean
     */
    public Boolean delete(String key) {
        return stringRedisTemplate.delete(key);
    }

    /**
     * set redis: hash
     *
     * @param key key
     * @param fileKey fileKey
     * @param value value
     */
    public void setHash(String key, String fileKey, String value){
        final HashOperations<String, Object, Object> ops = stringRedisTemplate.opsForHash();
        ops.put(key,fileKey,key);
    }

    /**
     * get redis: hash类型
     * @param key key
     * @param fileKey fileKey
     */
    public void getHash(String key, String fileKey){
        final HashOperations<String, Object, Object> ops = stringRedisTemplate.opsForHash();
        ops.get(key,fileKey);
    }

    /**
     * set redis: list类型
     *
     * @param key key
     * @param value value
     * @return long
     */
    public Long setList(String key,String value){
        final ListOperations<String, String> ops = stringRedisTemplate.opsForList();
        return ops.leftPush(key,value);
    }

    /**
     * get redis: list类型
     *
     * @param key key
     * @param start start
     * @return end
     */
    public List<String> getList(String key,long start,long end){
        return stringRedisTemplate.opsForList().range(key,start,end);
    }


}

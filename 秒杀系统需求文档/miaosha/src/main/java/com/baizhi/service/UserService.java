package com.baizhi.service;

public interface UserService {
    //向redis中写入用户访问次数
    int saveUserCount(Integer userId);
    //判断单位时间调用次数
    boolean getUserCount(Integer userId);
}
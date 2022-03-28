package com.baizhi.service;

public interface OrderService {
    //用来处理秒杀的下单方法 并返回订单id
    int kill(Integer id);


    //用来md5签名的方法
    String getMd5(Integer id, Integer userid);

    //用来处理秒杀的下单方法 并返回订单id 加入 md5接口隐藏的方式
    int kill(Integer id, Integer userid, String md5);
}

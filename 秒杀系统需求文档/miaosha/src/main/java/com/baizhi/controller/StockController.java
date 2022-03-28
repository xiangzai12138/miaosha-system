package com.baizhi.controller;

import com.baizhi.service.OrderService;
import com.baizhi.service.UserService;
import com.google.common.util.concurrent.RateLimiter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("stock")
@Slf4j
public class StockController {


    @Autowired
    private OrderService orderService;


    //创建令牌桶实例
    private RateLimiter rateLimiter = RateLimiter.create(10);


    @Autowired
    private UserService userService;


    //生成md5值的方法
    @RequestMapping("md5")
    public String getMd5(Integer id, Integer userid) {
        String md5;
        try {
            md5 = orderService.getMd5(id, userid);
        }catch (Exception e){
            e.printStackTrace();
            return "获取md5失败: "+e.getMessage();
        }
        return "获取md5信息为: "+md5;
    }



    //开发秒杀方法  使用乐观锁防止超卖
    @GetMapping("kill")
    public String kill(Integer id) {
        System.out.println("秒杀商品的id = " + id);
        try {
            //根据秒杀商品id 去调用秒杀业务
            int orderId = orderService.kill(id);
            return "秒杀成功,订单id为: " + String.valueOf(orderId);
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }


    //开发一个秒杀方法 乐观锁防止超卖+ 令牌桶算法限流 + md5签名(hash接口隐藏)
    @GetMapping("killtokenmd5")
    public String killtoken(Integer id,Integer userid,String md5) {
        System.out.println("秒杀商品的id = " + id);
        //加入令牌桶的限流措施
        if (!rateLimiter.tryAcquire(3, TimeUnit.SECONDS)) {
            log.info("抛弃请求: 抢购失败,当前秒杀活动过于火爆,请重试");
            return "抢购失败,当前秒杀活动过于火爆,请重试!";
        }
        try {
            //根据秒杀商品id 去调用秒杀业务
            int orderId = orderService.kill(id,userid,md5);
            return "秒杀成功,订单id为: " + String.valueOf(orderId);
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }


    //开发一个秒杀方法 乐观锁防止超卖+ 令牌桶算法限流 + md5签名(hash接口隐藏) + 单用户访问频率限制
    @GetMapping("killtokenmd5limit")
    public String killtokenlimit(Integer id,Integer userid,String md5) {
        //加入令牌桶的限流措施
        if (!rateLimiter.tryAcquire(3, TimeUnit.SECONDS)) {
            log.info("抛弃请求: 抢购失败,当前秒杀活动过于火爆,请重试");
            return "抢购失败,当前秒杀活动过于火爆,请重试!";
        }
        try {
            //单用户调用调用接口的频率限制
            int count = userService.saveUserCount(userid);
            log.info("用户截至该次的访问次数为: [{}]", count);
            //进行调用次数判断
            boolean isBanned = userService.getUserCount(userid);
            if (isBanned) {
                log.info("购买失败,超过频率限制!");
                return "购买失败，超过频率限制!";
            }
            //根据秒杀商品id 去调用秒杀业务
            int orderId = orderService.kill(id,userid,md5);
            return "秒杀成功,订单id为: " + String.valueOf(orderId);
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }



    //开发一个秒杀方法 乐观锁防止超卖+ 令牌桶算法限流
    @GetMapping("killtoken")
    public String killtoken(Integer id) {
        System.out.println("秒杀商品的id = " + id);
        //加入令牌桶的限流措施
        if (!rateLimiter.tryAcquire(3, TimeUnit.SECONDS)) {
            log.info("抛弃请求: 抢购失败,当前秒杀活动过于火爆,请重试");
            return "抢购失败,当前秒杀活动过于火爆,请重试!";
        }
        try {
            //根据秒杀商品id 去调用秒杀业务
            int orderId = orderService.kill(id);
            return "秒杀成功,订单id为: " + String.valueOf(orderId);
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }


//    @GetMapping("sale")
//    public String sale(Integer id){
//        //1.没有获取到token请求一直知道获取到token 令牌
//        //log.info("等待的时间: "+  rateLimiter.acquire());
//
//        //2.设置一个等待时间,如果在等待的时间内获取到了token 令牌,则处理业务,如果在等待时间内没有获取到响应token则抛弃
//        if(!rateLimiter.tryAcquire(2, TimeUnit.SECONDS)){
//            System.out.println("当前请求被限流,直接抛弃,无法调用后续秒杀逻辑....");
//            return "抢购失败!";
//        }
//        System.out.println("处理业务.....................");
//        return "抢购成功";
//    }


}

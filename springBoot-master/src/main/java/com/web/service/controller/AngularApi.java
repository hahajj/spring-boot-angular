package com.web.service.controller;

//import com.web.cache.RedisManager;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.web.cache.RedisManager;
import com.web.config.UserLoginToken;
import com.web.service.bean.*;
import com.web.service.service.AngularApiService;
//import com.web.service.service.SecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller

@RequestMapping("/angular")
public class AngularApi {

    @Autowired
    private AngularApiService angularApiService;

//    @Autowired
//    private RedisManager redisManagers;

//    @Autowired
//    private SecService secService;

    /**
     * alain登陆
     */

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public BaseResBean login(@RequestBody loginReq req, HttpServletRequest request) {
//        HttpSession session = request.getSession();//session
//        request.getSession().setAttribute("loginUser:", req.getUserName());

        BaseResBean res = new BaseResBean();
        try {
//            if(redisManagers.get(req.getUserName())!=null){
//            }else{
            loginRes resp = angularApiService.login(req);
//            res.setData(resp);
            JSONObject jsonObject=new JSONObject();
            String token = angularApiService.getToken(resp);
            jsonObject.put("content", resp);
            jsonObject.put("token", token);
            res.setData(jsonObject);
//            res.setMsg("user", req);
//            redisManagers.setex("loginUser:" + resp.getId(), resp.getId().toString());
//            System.out.println(redisManagers.get("loginUser:" + resp.getId()));
//            }
        } catch (Exception e) {
            e.printStackTrace();
            res.setCode(0);
            res.setMsg("賬號密碼錯誤！");
        }
        return res;
    }

    /**
     * alain登出
     */
    @RequestMapping(value = "/loginOut", method = RequestMethod.POST)
    @ResponseBody
    public BaseResBean loginOut(@RequestBody ApiListReq req, HttpServletRequest request) {
        System.out.println(request);
        BaseResBean res = new BaseResBean();
//        redisManagers.del("loginUser:"+req.getId());
        return res;
    }


    //    @Autowired
    @UserLoginToken
    @ResponseBody
    @RequestMapping(value = "/recordList", method = RequestMethod.POST)
    public BaseResBean recordList(@RequestBody String json) {

        BaseResBean res = new BaseResBean();
        try {
            res.setData(angularApiService.recordList(Integer.valueOf(JSON.parseObject(json).getString("id"))));
        } catch (Exception e) {
        }
        return res;
    }

    /**
     * 查看列表
     */
    @UserLoginToken
    @ResponseBody
    @RequestMapping(value = "/apiList", method = RequestMethod.POST)
    public ApiListBean apiList(@RequestBody String json) {
        ApiListBean res = new ApiListBean();
        try {
            res = (angularApiService.apiList(json));

        } catch (Exception e) {
            res.setCode(0);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 新增列表
     */
    @UserLoginToken
    @ResponseBody
    @RequestMapping(value = "/addApiList", method = RequestMethod.POST)
    public BaseResBean addApiList(@RequestBody String json) {
        BaseResBean res = new BaseResBean();
        try {
            res = (angularApiService.addApiList(json));

        } catch (Exception e) {
            res.setCode(0);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 用户信息
     */
    @UserLoginToken
    @ResponseBody
    @RequestMapping(value = "/userInfo", method = RequestMethod.POST)
    public BaseResBean userInfo(@RequestBody String json) {
        BaseResBean res = new BaseResBean();
        try {
            res = (angularApiService.userInfo(json));

        } catch (Exception e) {
            res.setCode(0);
            e.printStackTrace();
        }
        return res;
    }


    /**
     * 用户信息（文章）
     */
    @UserLoginToken
    @ResponseBody
    @RequestMapping(value = "/articles", method = RequestMethod.POST)
    public BaseResBean articles(@RequestBody String json) {
        BaseResBean res = new BaseResBean();
        try {
            res = (angularApiService.articles(json));

        } catch (Exception e) {
            res.setCode(0);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 修改个人信息
     */
    @UserLoginToken
    @RequestMapping(value = "/changeInfo", method = RequestMethod.POST)
    public BaseResBean changeInfo(@RequestBody String json) {
        BaseResBean res = new BaseResBean();
        try {
            angularApiService.changeInfo(json);

        } catch (Exception e) {
            res.setCode(0);
            e.printStackTrace();
        }
        return res;
    }

    @UserLoginToken
    @GetMapping("/getMessage")
    public String getMessage(){
        return "你已通过验证";
    }

}

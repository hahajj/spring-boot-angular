package com.web.service.service.impl;

import com.alibaba.fastjson.JSON;
import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.web.service.bean.*;
import com.web.service.dao.AngularApiMapper;
import com.web.service.service.AngularApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 456 on 2019/7/15.
 */

@Service("AngularApiService")
public class AngularApiServiceImpl implements AngularApiService {
    @Autowired
    private AngularApiMapper angularApiMapper;


    public loginRes login(loginReq req) {
        return angularApiMapper.login(req);
    }

    public loginReq user(Integer req) {
        return angularApiMapper.getUser(req);
    }

    public List<RecordListRes> recordList(Integer req) {
        List<RecordListRes> list = (angularApiMapper.recordList(req));
        return list;
    }

    @Override
    public ApiListBean apiList(String req) {
        ApiListBean res = new ApiListBean();
        ApiListReq json = JSON.parseObject(req, ApiListReq.class);
        PageHelper.startPage(json);
        Map<String, Object> map = new HashMap<String, Object>();
        List<ApiListRes> list = (angularApiMapper.apiList(json.getId()));
        PageInfo<ApiListRes> page = new PageInfo<>(list);
        map.put("lists", page);
        Integer num = (angularApiMapper.ownerCounts(json.getId()));
        res.setData(page);
        res.setCounts(num);
        return res;
    }


    public BaseResBean addApiList(String req) {
        BaseResBean res = new BaseResBean();
        ApiListReq json = JSON.parseObject(req, ApiListReq.class);
        angularApiMapper.addApiList(json);
        return res;
    }


    public BaseResBean userInfo(String req) {
        BaseResBean res = new BaseResBean();
        ApiListReq json = JSON.parseObject(req, ApiListReq.class);
        Map<String, Object> map = new HashMap<String, Object>();
        loginRes info = angularApiMapper.userInfo(json.getId());
        String teamStr = info.getTeamNum();
        String tagStr = info.getTagNum();
        List<TeamResBean> notice = new ArrayList<>();
        map.put("info", info);
        if (teamStr != null) {
            String[] arr = teamStr.split(",");
            for (String i : arr) {
                notice.add(angularApiMapper.notice(Integer.parseInt(i)));
            }
            map.put("notice", notice);
        }
        List<TeamResBean> notice1 = new ArrayList<>();
        if (tagStr != null) {
            String[] arrS = tagStr.split(",");
            for (String i : arrS) {
                notice1.add(angularApiMapper.tagN(Integer.parseInt(i)));
            }
            map.put("tags", notice1);
        }

        res.setData(map);
        return res;
    }


    public BaseResBean articles(String req) {
        BaseResBean res = new BaseResBean();
        ApiListReq json = JSON.parseObject(req, ApiListReq.class);
        List<articlesResBean> articles = angularApiMapper.articles(json.getId());
        res.setData(articles);
        return res;
    }


    public void changeInfo(String req) {
        ApiListReq json = JSON.parseObject(req, ApiListReq.class);
        angularApiMapper.changeInfo(json);
    }

    public String getToken(loginRes user) {
        String token = "";
        token = JWT.create().withAudience(String.valueOf(user.getId()))
                .sign(Algorithm.HMAC256(user.getPassword()));
        return token;
    }

    public String chart(Integer req) {
        String res=angularApiMapper.chart(req);
        return res;
    }


}

package com.web.service.service;

import com.web.service.bean.*;

import java.util.List;

/**
 * Created by 456 on 2019/7/15.
 */
public interface AngularApiService {

    loginReq user(Integer req);

    loginRes login(loginReq req);

    List<RecordListRes> recordList(Integer req);

    ApiListBean apiList(String req);

    BaseResBean addApiList(String req);


    BaseResBean userInfo(String req);

    BaseResBean articles(String req);


    void changeInfo(String req);


    String  getToken (loginRes user);
}

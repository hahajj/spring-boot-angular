package com.web.service.dao;

import com.web.service.bean.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by 456 on 2019/7/15.
 */

@Mapper
public interface AngularApiMapper {
    loginReq getUser(Integer req);

    loginRes login(loginReq req);


    List<RecordListRes> recordList(Integer req);


    List<ApiListRes> apiList(Integer req);

    int ownerCounts(Integer req);


    int addApiList(ApiListReq req);

    loginRes userInfo(Integer req);

    TeamResBean notice(Integer req);


    List<articlesResBean> articles(Integer req);

    TeamResBean tagN(Integer req);


    void changeInfo(ApiListReq req);
    String chart(Integer req);


}

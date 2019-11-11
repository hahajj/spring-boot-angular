package com.web.service.bean;

import java.io.Serializable;

/**
 * Created by 456 on 2019/7/19.
 */
public class BasePageBean implements Serializable {
    public final static int SIZE = 10;
    public final static int PAGE = 1;

    public BasePageBean(){

        this.pageSize = this.SIZE;
        this.pageNum = this.PAGE;
    }

    private Integer pageSize;
    private Integer pageNum;

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageNum() {return pageNum; }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

}

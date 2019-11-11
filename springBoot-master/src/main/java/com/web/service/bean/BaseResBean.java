package com.web.service.bean;


public class BaseResBean {

    public final static int SUCCESS = 1;
    public final static int FAIL = 0;

    public BaseResBean(){
        this.code = this.SUCCESS;
        this.msg = "SUCCESS";
    }

    private int code;
    private String msg;
    private Object data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}

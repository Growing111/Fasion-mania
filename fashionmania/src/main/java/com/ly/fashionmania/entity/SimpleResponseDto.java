package com.ly.fashionmania.entity;

public class SimpleResponseDto<T> {
    private final static String DEFAULT_SUCCESS_STATUS = "0";
    private final static String DEFAULT_FAIL_STATUS = "1";
    private final static String DEFAULT_MESSAGE_SUCCESS = "成功";
    private final static String DEFAULT_MESSAGE_FAIL = "失败";
    private String code="0";
    private String message = "成功";
    private T data;
    private int count;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setData(T data) {
        this.data = data;
    }
    public SimpleResponseDto(T data) {
        this.code=DEFAULT_SUCCESS_STATUS;
        this.message=DEFAULT_MESSAGE_SUCCESS;
        this.data = data;
    }
    public SimpleResponseDto(T data,int count) {
        this.code=DEFAULT_SUCCESS_STATUS;
        this.message=DEFAULT_MESSAGE_SUCCESS;
        this.data = data;
        this.count = count;
    }

    public SimpleResponseDto(T data, String code, String message) {
        this.code=code;
        this.message=message;
        this.data = data;
    }

    public SimpleResponseDto(String code, String message) {
        this.code=code;
        this.message=message;
    }


    public static SimpleResponseDto success(){
        return new SimpleResponseDto(null);
    }

    public static <T> SimpleResponseDto success(T data) {
        return new SimpleResponseDto(data);
    }

    public static SimpleResponseDto failureWithMessage(String message) {
        return new SimpleResponseDto(DEFAULT_FAIL_STATUS, message);
    }
    public static SimpleResponseDto failure() {
        return new SimpleResponseDto(null,DEFAULT_FAIL_STATUS,DEFAULT_MESSAGE_FAIL);
    }

    public static <T> SimpleResponseDto failure(T data) {
        return new SimpleResponseDto(data,DEFAULT_FAIL_STATUS,DEFAULT_MESSAGE_FAIL);
    }
}

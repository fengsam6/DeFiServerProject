package org.cqupt.DeFiServerProject.common.exception;

import org.cqupt.DeFiServerProject.common.entity.CommonResult;

public class AppException extends RuntimeException implements CommonResult {
    private String code;
    private String msg;

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }


    public AppException(String code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }
}


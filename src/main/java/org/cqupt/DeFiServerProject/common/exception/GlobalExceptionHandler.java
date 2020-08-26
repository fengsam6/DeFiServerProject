package org.cqupt.DeFiServerProject.common.exception;

import org.cqupt.DeFiServerProject.common.entity.CommonResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    private Logger logger = LoggerFactory.getLogger(getClass());
    @ExceptionHandler(AppException.class)
    public CommonResult errorMsg(AppException appException){
        logger.error("错误提示：{}",appException.getMsg());
        appException.printStackTrace();
        return appException;
    }

    @ExceptionHandler(Exception.class)
    public CommonResult errorMsg(Exception ex){
        logger.error("错误提示：{}",ex.getMessage());
        ex.printStackTrace();
        return new AppException("500","系统繁忙，请稍后访问");
    }

}

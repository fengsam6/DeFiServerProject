package org.cqupt.DeFiServerProject.controller;

import org.cqupt.DeFiServerProject.entity.Exchange;
import org.cqupt.DeFiServerProject.service.ExchangeService;
import org.cqupt.DeFiServerProject.util.DataConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 
 */
@RestController
@RequestMapping("/mark/exchange")
public class ExchangeController {

    @Autowired
    private ExchangeService exchangeService;

    /**
     * 查询所有汇率
     * 访问url： /mark/exchange/
     * @return
     */
    @GetMapping("/")
    public Map<String,Object> findAll(){
        List<Exchange> exchangeList = exchangeService.findAll();
        Map<String,Object> result = DataConvertUtils.MarksToMap(exchangeList);
        return result;
    }

}

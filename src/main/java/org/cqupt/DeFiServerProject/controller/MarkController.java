package org.cqupt.DeFiServerProject.controller;

import org.cqupt.DeFiServerProject.entity.Mark;
import org.cqupt.DeFiServerProject.service.MarkService;
import org.cqupt.DeFiServerProject.util.DataConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 
 */
@RestController
@RequestMapping("/mark")
public class MarkController {

    @Autowired
    private MarkService markService;

    @RequestMapping("/findAll")
    public Map<String,Object> findAll(){
        List<Mark> markList = markService.findAll();
        Map<String,Object> result = DataConvertUtils.MarksToMap(markList);
        return result;
    }

}

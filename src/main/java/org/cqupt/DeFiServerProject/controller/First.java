package org.cqupt.DeFiServerProject.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class First {

	/*
	 * 跨域问题待解决
	 * 现有这个耦合度太高
	 * */
	@CrossOrigin(origins = "http://localhost:9527")
	@RequestMapping(value = "/getData", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getData() {
		System.out.println("接收请求");
		List<Integer> list1 = new ArrayList<Integer>();
		list1.add(50);
		list1.add(120);
		list1.add(161);
		list1.add(134);
		list1.add(105);
		list1.add(160);
		list1.add(165);
		
		List<Integer> list2 = new ArrayList<Integer>();
		list2.add(120);
		list2.add(82);
		list2.add(91);
		list2.add(154);
		list2.add(162);
		list2.add(140);
		list2.add(145);
		
		Map<String, Object> map = new HashMap<>();
	    map.put("expectedData", list1 );
	    map.put("actualData", list2 );
	    map.put("code", 20000);
		ObjectMapper mapper = new ObjectMapper();
		String resultString = "";
		try {
		    resultString = mapper.writeValueAsString(map);
		    System.out.println(resultString);
		} catch (JsonProcessingException e) {
		    e.printStackTrace();
		}
		return resultString;
    }
}

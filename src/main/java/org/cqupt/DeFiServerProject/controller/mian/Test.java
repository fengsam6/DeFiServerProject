package org.cqupt.DeFiServerProject.controller.mian;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Test {

	public static void main(String[] args) {
		JSONObject obj1 = new JSONObject();
		obj1.put("network", "ETH");
		obj1.put("hash","0xdac17f958d2ee523a2206206994597c13d831ec7");
		JSONObject obj2 = new JSONObject();
		obj2.put("network", "ETH");
		obj2.put("hash","0xdac17f958d2ee523a2206206994597c13d831ec7");
		obj2.put("balance",1234);
		JSONObject obj4 = new JSONObject();
		obj4.put("obj4_1", "110");
		obj4.put("obj4_2","120");
		obj2.put("balance",obj4);
		JSONArray arr = new JSONArray();
		arr.add(obj1);
		arr.add(obj2);
		JSONObject obj3 = new JSONObject();
		obj3.put("code","1");
		obj3.put("data",arr);
		
		System.out.println(obj3.toString());
	}
}

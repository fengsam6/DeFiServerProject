package org.cqupt.DeFiServerProject.controller.manageAndConnect;

import java.util.HashMap;
import java.util.Map;

import org.cqupt.DeFiServerProject.util.HttpClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "/manageAndConnect")
public class ManageAddresses {

	/**
	 * 2020.08.25
	 * @author LupeChan
	 * 账户的主要查询操作  
	 * 1 追踪任意 ETH/ENS 地址在各个以太坊 DeFi 产品中的投资组合
	 * 2 TODO 钱包管理
	 * 
	 * 增加调用规则  保证接口不被频繁平凡调用·
	 */
	@CrossOrigin(origins = "http://localhost:9527")
	@RequestMapping(value = "/getData", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getData(@RequestBody String RequestDate) {
		System.out.println("RequestDate=="+RequestDate);
		System.out.println("String 转JSON");
		JSONObject jsonobject = JSONObject.fromObject(RequestDate);
		String ETHStr = (String)jsonobject.get("ETHStr");
		int RequestType = (Integer)jsonobject.get("RequestType");
		System.out.println("ETHStr="+ETHStr);
		System.out.println("RequestType="+RequestType);
		/**
		 * 代币账户余额
		 * http://www.tokenview.com:8088/eth/address/tokenbalance/0x1062a747393198f70f71ec65a582423dba7e5ab3
		 * 
		 * ETH账户余额
		 * http://www.tokenview.com:8088/addr/b/eth/0x1062a747393198f70f71ec65a582423dba7e5ab3
		 * 
		 * 
		 * 代币信息
		 * http://www.tokenview.com:8088/eth/token/0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
		 * 
		 * 所有代币列表
		 * http://www.tokenview.com:8088/eth/tokens/1/20
		 * 
		 * 
		 * 0x519475b31653e46d20cd09f9fdcf3b12bdacb4f5
		 * https://api.etherscan.io/api?module=account&action=balance&address=0x1062a747393198f70f71ec65a582423dba7e5ab3&tag=latest
		 */
		String rsp = HttpClient.doGet("http://www.tokenview.com:8088/eth/address/tokenbalance/0x519475b31653e46d20cd09f9fdcf3b12bdacb4f5");
		String testRsp = "";
		
		System.out.println(rsp);
		Map<String, Object> map = new HashMap<>();
	    map.put("code", 20000);
		ObjectMapper mapper = new ObjectMapper();
		String resultString = "";
		try {
		    resultString = mapper.writeValueAsString(map);
		} catch (JsonProcessingException e) {
		    e.printStackTrace();
		}
		return resultString;
	}
	
}

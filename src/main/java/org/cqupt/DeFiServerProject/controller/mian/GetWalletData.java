package org.cqupt.DeFiServerProject.controller.mian;

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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "/DefiServer/main")
public class GetWalletData {

	String baseURL = "http://www.tokenview.com:8088/";
	
	
	/**
	 * 2020.08.25
	 * @author LupeChan
	 * 账户的主要查询操作  
	 * 
	 * 增加调用规则  保证接口不被频繁平凡调用·
	 */
	@CrossOrigin(origins = "http://localhost:9527")
	@RequestMapping(value = "/getTokenbalance", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getTokenbalance(@RequestBody String RequestDate) {
		System.out.println("RequestDate=="+RequestDate);
		System.out.println("String 转JSON");
		//处理请求数据
		JSONObject jsonobject = JSONObject.fromObject(RequestDate);
		String ETHStr = (String)jsonobject.get("ETHStr");
		int RequestType = (Integer)jsonobject.get("RequestType");
		System.out.println("ETHStr="+ETHStr);
		System.out.println("RequestType="+RequestType);
		
		String responseStr = null;
		Map<String, Object> responseMap = null ;
		if(RequestType==1 ) {
			//RequestType=1 查询账户ETH余额
			System.out.println("请求地址|||"+baseURL+"addr/b/eth/"+ETHStr);
			responseStr = HttpClient.doGet(baseURL+"addr/b/eth/"+ETHStr);
			JSONObject responseJsonObj = JSONObject.fromObject(responseStr);
			int code = (Integer)responseJsonObj.get("code");
			String data = (String)responseJsonObj.get("data");
			System.out.println("code"+code);
			System.out.println("data"+data);
			
			if(code==1) {
				responseMap = new HashMap<>();
				responseMap.put("code", 20000);
				responseMap.put("data", data);
			}
			
		} else if(RequestType==2 ) {
			//RequestType=2 查询账户代币余额
			System.out.println("请求地址|||"+baseURL+"eth/address/tokenbalance/"+ETHStr);
			responseStr = HttpClient.doGet(baseURL+"eth/address/tokenbalance/"+ETHStr);
			JSONObject responseJsonObj = JSONObject.fromObject(responseStr);
			JSONArray dataArr = (JSONArray) responseJsonObj.get("data");
			JSONObject data = dataArr.getJSONObject(0);
			String network = (String)data.get("network");
			String hash = (String)data.get("hash");
			int transferCnt = (Integer)data.get("transferCnt");
			String balance = (String)data.get("balance");
			JSONObject tokenInfo = (JSONObject) data.get("tokenInfo");
			String tokenInfo_h = (String)tokenInfo.get("h");
			String tokenInfo_f = (String)tokenInfo.get("f");
			String tokenInfo_s = (String)tokenInfo.get("s");
			String tokenInfo_d = (String)tokenInfo.get("d");
			System.out.println(network+"||"+hash+"||"+transferCnt+"||"+balance+"||"+tokenInfo_h+"||"+tokenInfo_f+"||"+tokenInfo_s+"||"+tokenInfo_d);
		}
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
		 * 主流币的汇率   （存库  每10分钟刷新一次   前端每次从数据库取值 readis）
		 * http://www.tokenview.com:8088/market/exchange
		 * 
		 * 
		 * 0x519475b31653e46d20cd09f9fdcf3b12bdacb4f5
		 * https://api.etherscan.io/api?module=account&action=balance&address=0x1062a747393198f70f71ec65a582423dba7e5ab3&tag=latest
		 */
		//String rsp = HttpClient.doGet("http://www.tokenview.com:8088/eth/address/tokenbalance/0x519475b31653e46d20cd09f9fdcf3b12bdacb4f5");
		
		ObjectMapper mapper = new ObjectMapper();
		String resultString = "";
		try {
			resultString = mapper.writeValueAsString(responseMap);
		} catch (JsonProcessingException e) {
		    e.printStackTrace();
		}
		return resultString;
	}
}

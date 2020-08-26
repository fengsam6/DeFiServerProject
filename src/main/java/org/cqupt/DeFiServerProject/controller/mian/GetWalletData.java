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
			
			responseMap = new HashMap<>();
			if(code==1 ) {
				//接口调用成功
				String trueBalance = (String)responseJsonObj.get("data");
				
				responseMap.put("code", 20000);
				responseMap.put("data", trueBalance);
			}else {
				responseMap.put("code", 50000);
				responseMap.put("msg", "请求失败!");
			}
			
		} else if(RequestType==2 ) {
			//RequestType=2 查询账户代币余额
			System.out.println("请求地址|||"+baseURL+"eth/address/tokenbalance/"+ETHStr);
			responseStr = HttpClient.doGet(baseURL+"eth/address/tokenbalance/"+ETHStr);
			
			JSONObject responseJsonObj = JSONObject.fromObject(responseStr);
			int code = (Integer)responseJsonObj.get("code");
			responseMap = new HashMap<>();
			if(code==1 ) {
				//接口调用成功
				JSONArray dataArr = (JSONArray) responseJsonObj.get("data");//API返回数据
				JSONArray dataArray = new JSONArray();//处理后结果
				for (int i=0; i<3; i++) {//dataArr.size()
					JSONObject data = dataArr.getJSONObject(i);
					String network = (String)data.get("network");//ETH
					String hash = (String)data.get("hash");
					int transferCnt = (Integer)data.get("transferCnt");//交易该代币的笔数
					String balanceStr = (String)data.get("balance");//账户余额  （需要除以10的decimals次方才是真实余额）例：138411529944918/10e6 =1 3841 1529.944918
					JSONObject tokenInfo = (JSONObject) data.get("tokenInfo");
					//String tokenInfo_h = (String)tokenInfo.get("h");
					String tokenInfo_f = (String)tokenInfo.get("f");//代币全称
					String tokenInfo_s = (String)tokenInfo.get("s");//代币单位符号
					String tokenInfo_d = (String)tokenInfo.get("d");//代币精度  6
					//计算真实余额
					double balance = Double.parseDouble( balanceStr);
					System.out.println("balanceStr="+balanceStr);
					double d = Double.parseDouble(tokenInfo_d);
					System.out.println("代币精度="+d);
					double trueBalance = balance/(10^(int)d);
					
					JSONObject infoObj = new JSONObject();
					infoObj.put("index", i);
					//infoObj.put("network", network);
					infoObj.put("hash", hash);
					infoObj.put("transferCnt", transferCnt);
					infoObj.put("trueBalance", trueBalance);
					infoObj.put("fullName", tokenInfo_f);
					infoObj.put("unit", tokenInfo_s);
					dataArray.add(infoObj);//插入json数组
					System.out.println(network+"||"+hash+"||"+transferCnt+"||"+trueBalance+"||"+tokenInfo_f+"||"+tokenInfo_s);
				}
				responseMap.put("code", 20000);
				responseMap.put("data", dataArray);
				
			}
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
		
		ObjectMapper mapper = new ObjectMapper();
		String resultString = "";
		try {
			resultString = mapper.writeValueAsString(responseMap);
			System.out.println("resultString||="+resultString);
		} catch (JsonProcessingException e) {
		    e.printStackTrace();
		}
		return resultString;
	}
}

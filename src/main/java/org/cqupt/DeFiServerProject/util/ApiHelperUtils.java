package org.cqupt.DeFiServerProject.util;


import org.springframework.web.client.RestTemplate;

import java.util.Map;

public class ApiHelperUtils {
    private static RestTemplate restTemplate =new RestTemplate();

    /**
     * 返回列表数据
     * @param url
     * @return
     */
    public static Map<String,Object> resolveApi(String url){
      Map dataResult =  restTemplate.getForObject(url,Map.class);
      if(dataResult.containsKey("data")){
          dataResult = (Map) dataResult.get("data");
      }
      return dataResult;
    }
}

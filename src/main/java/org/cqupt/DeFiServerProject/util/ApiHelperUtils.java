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


    /**
     * 解析请求url,根据data创建表
     * @param tableName
     * @param apiUrl
     * @return
     */
    public static boolean createTableByApiUrl( String apiUrl,String tableName) {
        Map<String, Object> dataResultMap = ApiHelperUtils.resolveApi(apiUrl);
        return TableHelperUtils.createTableByData(tableName, dataResultMap);
    }


    /**
     * 解析url返回数据，根据返回数据，建表、插入数据库
     */
    public static  void resolveUrlToTable(String url,String tableName) {
        String  apiUrl = "http://www.tokenview.com:8088/market/exchange";
        if(!TableHelperUtils.isTableExist(tableName)){
             createTableByApiUrl(url,tableName);
        }
        TableHelperUtils.synTableData(apiUrl,tableName);
    }
}

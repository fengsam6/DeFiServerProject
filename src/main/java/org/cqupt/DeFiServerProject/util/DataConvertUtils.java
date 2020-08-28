package org.cqupt.DeFiServerProject.util;

import org.cqupt.DeFiServerProject.entity.Exchange;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataConvertUtils {
    public static List<Exchange> mapConvertMark(Map<String, Object> dataMap) {
        List<Exchange> exchangeList = new ArrayList<>();
        for (Map.Entry<String, Object> dataMapEntry : dataMap.entrySet()) {
            String key = dataMapEntry.getKey();
            String value =   dataMapEntry.getValue()+"";
            String dataStr = DataUtils.getCurDateStr();
            Exchange exchange = new Exchange(key, value, dataStr, "");
            exchangeList.add(exchange);
        }
        return exchangeList;
    }

    public static Map<String, Object> MarksToMap(List<Exchange> exchangeList) {
        Map<String,Object> dataMap = new HashMap<>();
        for(Exchange mark: exchangeList){
            String name = mark.getName();
            String exchange = mark.getExchange();
            String getdate = mark.getGetdate();
            String hashcode = mark.getHashcode();
            dataMap.put(name,exchange);
        }
        return dataMap;
    }
}

package org.cqupt.DeFiServerProject.util;

import org.cqupt.DeFiServerProject.entity.Mark;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataConvertUtils {
    public static List<Mark> mapConvertMark(Map<String, Object> dataMap) {
        List<Mark> markList = new ArrayList<>();
        for (Map.Entry<String, Object> dataMapEntry : dataMap.entrySet()) {
            String key = dataMapEntry.getKey();
            String value =   dataMapEntry.getValue()+"";
            String dataStr = DataUtils.getCurDateStr();
            Mark mark = new Mark(key, value, dataStr, "");
            markList.add(mark);
        }
        return markList;
    }

    public static Map<String, Object> MarksToMap(List<Mark> markList) {
        Map<String,Object> dataMap = new HashMap<>();
        for(Mark mark:markList){
            String name = mark.getName();
            String exchange = mark.getExchange();
            String getdate = mark.getGetdate();
            String hashcode = mark.getHashcode();
            dataMap.put(name,exchange);
        }
        return dataMap;
    }
}

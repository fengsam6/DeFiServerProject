package org.cqupt.DeFiServerProject.common.dataHelper;

import org.cqupt.DeFiServerProject.entity.Exchange;
import org.cqupt.DeFiServerProject.service.ExchangeService;
import org.cqupt.DeFiServerProject.util.ApiHelperUtils;
import org.cqupt.DeFiServerProject.util.DataConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DataHelperService {
    @Autowired
    private ExchangeService exchangeService;

    /**
     * 解析请求url，将url返回数据存在表mark中，
     * 需要先建表
     * @param url
     * @return
     */
    public boolean pullData(String url) {
        Map<String, Object> dataMap = ApiHelperUtils.resolveApi(url);
        List<Exchange> exchangeList = DataConvertUtils.mapConvertMark(dataMap);
        exchangeList.forEach((m) -> {
            exchangeService.save(m);
        });
        return true;
    }
}

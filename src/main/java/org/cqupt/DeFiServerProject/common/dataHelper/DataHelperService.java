package org.cqupt.DeFiServerProject.common.dataHelper;

import org.cqupt.DeFiServerProject.entity.Mark;
import org.cqupt.DeFiServerProject.service.MarkService;
import org.cqupt.DeFiServerProject.util.ApiHelperUtils;
import org.cqupt.DeFiServerProject.util.DataConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DataHelperService {
    @Autowired
    private MarkService markService;

    /**
     * 从URL拉去数据，存在表mark中，
     * 需要先建表
     * @param url
     * @return
     */
    public boolean pullData(String url) {
        Map<String, Object> dataMap = ApiHelperUtils.resolveApi(url);
        List<Mark> markList = DataConvertUtils.mapConvertMark(dataMap);
        markList.forEach((m) -> {
            markService.save(m);
        });
        return true;
    }
}

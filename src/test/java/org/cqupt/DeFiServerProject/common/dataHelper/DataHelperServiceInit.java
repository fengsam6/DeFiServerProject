package org.cqupt.DeFiServerProject.common.dataHelper;

import org.cqupt.DeFiServerProject.DeFiServerProjectApplication;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest(classes = DeFiServerProjectApplication.class)
@RunWith(SpringRunner.class)
public class DataHelperServiceInit {
@Autowired
private DataHelperService dataHelperService;

    /**
     * 解析请求url，将url返回数据存在表exchange中，
     * 需要先执行sql建表
     * 如果需要定时获取数据（或者需要http请求），再开发一层接口，调用dataHelperService
     */
    @Test
    public void pullMartData() {
        String url = "http://www.tokenview.com:8088/market/exchange";
        dataHelperService.pullData(url);
    }
}

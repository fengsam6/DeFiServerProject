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
     * 同步markData
     */
    @Test
    public void pullMartData() {
        String url = "http://www.tokenview.com:8088/market/exchange";
        dataHelperService.pullData(url);
    }
}

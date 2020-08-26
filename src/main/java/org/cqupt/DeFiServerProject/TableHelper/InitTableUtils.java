package org.cqupt.DeFiServerProject.TableHelper;
import org.cqupt.DeFiServerProject.DeFiServerProjectApplication;
import org.cqupt.DeFiServerProject.util.TableHelperUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
@SpringBootTest(classes = DeFiServerProjectApplication.class)
@RunWith(SpringRunner.class)
public class InitTableUtils {
    /**
     * 数字货币汇率
     */
    @Test
    public  void createMarketTable() {
        String  apiUrl = "http://www.tokenview.com:8088/market/exchange";
        TableHelperUtils.createTableByData("market",apiUrl);
    }

    /**
     * 将url返回数据插入数据库中
     */
    @Test
    public  void SynMarketTableData() {
        String  apiUrl = "http://www.tokenview.com:8088/market/exchange";
        TableHelperUtils.synTableData(apiUrl,"market");
    }


    /**
     * 数字货币行情
     */
    @Test
    public  void createMarketInfoTable() {
        String  apiUrl = "http://www.tokenview.com:8088/coin/marketInfo/btc";
        TableHelperUtils.createTableByData("marketInfo",apiUrl);
    }


    /**
     * 将url返回数据插入数据库中
     */
    @Test
    public  void SynMarketInfoTableData() {
        String  apiUrl = "http://www.tokenview.com:8088/coin/marketInfo/btc";
        TableHelperUtils.synTableData(apiUrl,"marketInfo");
    }
}

package org.cqupt.DeFiServerProject.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DataUtils {
    private static String dateFormate="yyyy-MM-dd hh:mm:ss";
    public static String getCurDateStr() {
        SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormate);
       return dateFormat.format(new Date());
    }
}

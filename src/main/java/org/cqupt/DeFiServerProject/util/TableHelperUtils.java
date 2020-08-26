package org.cqupt.DeFiServerProject.util;


import org.cqupt.DeFiServerProject.common.exception.AppException;
import org.cqupt.DeFiServerProject.entity.ColumnInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 根据接口数据创建表
 */
public class TableHelperUtils {
    private static Logger logger = LoggerFactory.getLogger(TableHelperUtils.class);
    private static JdbcTemplate jdbcTemplate = SpringApplicationUtils.getBean(JdbcTemplate.class);
    private static final String dataBaseName = "loveapp_databases";

    public static boolean createTableByData(String tableName, Map<String, Object> dataResultMap) {

        return createTableByData(dataBaseName, tableName, dataResultMap);
    }

    public static boolean createTableByData(String tableName, String apiUrl) {
        Map<String, Object> dataResultMap = ApiHelperUtils.resolveApi(apiUrl);
        return createTableByData(tableName, dataResultMap);
    }

    public static boolean createTableByData(String dataBaseName, String tableName, Map<String, Object> dataResultMap) {
        if (CollectionUtils.isEmpty(dataResultMap)) {
            throw new AppException("500", "数据不能为空");
        }
        Map<String, ColumnInfo> columnInfoMap = new HashMap<>();
        for (Map.Entry<String, Object> entry : dataResultMap.entrySet()) {
            String columnName = entry.getKey();
            Object columnValueObj = entry.getValue();

            ColumnInfo columnInfo = new ColumnInfo();
            String columnType = null;
            int length = 80;
            if (columnValueObj instanceof Integer) {
                columnType = "int";
            } else {
                columnType = "varchar";
                String columnValue = columnValueObj + "";
                length = columnValue.length();
                //增加40，确保其他插入数据长度够
                length = length + 30;
                if (length > 255) {
                    columnType = "text";
                }
            }
            //设置默认主键策略，列明为id,或者列明包含i，则设置为主键
            if (!StringUtils.isEmpty(columnName) && columnName.equals("id") || columnName.equals("ID")) {
                columnInfo.setPrimaryKey(true);
            }
            columnInfo.setColumnType(columnType);
            columnInfo.setColumnLength(length);
            columnInfoMap.put(columnName, columnInfo);
        }
        return createTable(dataBaseName, tableName, columnInfoMap);
    }

    public static boolean createTable(String dataBaseName, String tableName, Map<String, ColumnInfo> columnInfoMap) {
        if (!isDataBaseExist(dataBaseName)) {
            System.out.println("数据库" + dataBaseName + "不存在，创建数据库" + dataBaseName);
            createDataBase(dataBaseName);
        }
        if (StringUtils.isEmpty(tableName) || CollectionUtils.isEmpty(columnInfoMap)) {
            throw new AppException("500", "表名不能为空，列信息获取失败，创建表失败！");
        }
        useDataBase(dataBaseName);
        StringBuilder stringBuilder = new StringBuilder();
        tableName = tableName.trim();
        stringBuilder.append("create table  " + "`" + tableName + "`" + "(");
        for (Map.Entry<String, ColumnInfo> columnInfoEntry : columnInfoMap.entrySet()) {
            ColumnInfo columnInfo = columnInfoEntry.getValue();
            String columnName = columnInfoEntry.getKey();
            if (StringUtils.isEmpty(columnName) || columnInfo == null) {
                continue;
            }
            columnName = columnName.trim();
            stringBuilder.append(" `" + columnName + "` " + columnInfo.getColumnType() + "( " + columnInfo.getColumnLength() + " )");
            if (columnInfo.isPrimaryKey()) {
                stringBuilder.append(" PRIMARY  KEY ");
            }
            if (columnInfo.isIncrement()) {
                stringBuilder.append(" AUTO_INCREMENT");
            }
            if (!StringUtils.isEmpty(columnInfo.getColumnComment())) {
                stringBuilder.append(" comment " + "'" + columnInfo.getColumnComment() + "'");
            }
            stringBuilder.append(",");

        }

        //去掉拼接最后一个字符
        stringBuilder.deleteCharAt(stringBuilder.lastIndexOf(","));

        stringBuilder.append(" )");
        //设置存储引擎及数据库编码字符utf-8
        stringBuilder.append(" ENGINE=InnoDB DEFAULT CHARSET=utf8;");
        String sql = stringBuilder.toString();
        try {
            return jdbcTemplate.update(sql) > 0;
        } catch (DataAccessException e) {
            e.printStackTrace();
            logger.error("创建表失败：{}", e.getMessage());
            return false;
        }
    }

    public static boolean isDataBaseExist(String dataBaseName) {
        String sql = "select COUNT(*) from information_schema.schemata WHERE schema_name = #1";
        sql = sql.replaceFirst("#1", "'" + dataBaseName + "'");
        int count = jdbcTemplate.queryForObject(sql, Integer.class);
        return count > 0;
    }

    public static void createDataBase(String dataBaseName) {
        String sql = "create database #1";
        if (StringUtils.isEmpty(dataBaseName)) {
            throw new AppException("500", "数据库名称不能，创建数据库失败");
        }
        dataBaseName = dataBaseName.trim();
        sql = sql.replaceFirst("#1", dataBaseName);
        jdbcTemplate.execute(sql);
    }

    public static void useDataBase(String dataBaseName) {
        String sql = "use  #1";
        sql = sql.replaceFirst("#1", "`" + dataBaseName + "`");
        jdbcTemplate.execute(sql);
    }


    public static boolean insertTable(String dataBaseName, String tableName, Object value, Map<String, ColumnInfo> ColumnInfoMap) {

        if (StringUtils.isEmpty(tableName) || value == null) {
            throw new AppException("101", "配置信息错误，向表添加数据失败！");
        }
        StringBuilder sqlStringBuilder = new StringBuilder();
        sqlStringBuilder.append("insert into " + tableName + " values(");
        useDataBase(dataBaseName);
        StringBuilder stringBuilder = new StringBuilder(value.toString());
        sqlStringBuilder.append(stringBuilder.deleteCharAt(0).deleteCharAt(stringBuilder.lastIndexOf("]")));
        sqlStringBuilder.append(")");
        return jdbcTemplate.update(sqlStringBuilder.toString()) > 0;
    }


    public static boolean insertListTable(String dataBaseName, String tableName, List<Map<String, Object>> columnValueMaps) {
        int len = columnValueMaps.size();
        for (int i = 0; i < len; i++) {
            if (!insertTable(dataBaseName, tableName, columnValueMaps.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean insertListTable(String tableName, List<Map<String, Object>> columnValueMaps) {
        return insertListTable(dataBaseName, tableName, columnValueMaps);
    }

    public static boolean synTableData(String apiUrl, String tableName) {
        Map<String, Object> dataResultMap = ApiHelperUtils.resolveApi(apiUrl);
        if(dataResultMap instanceof List){
            List<Map<String, Object>> columnValueMaps = (List<Map<String, Object>>) dataResultMap;
            return insertListTable(tableName,columnValueMaps);
        }else{
            return insertOneTable( tableName, dataResultMap);
        }

    }

    public static boolean insertOneTable(String tableName, Map<String, Object> columnValueMap) {
        return insertTable(dataBaseName, tableName, columnValueMap);
    }

    public static boolean insertTable(String dataBaseName, String tableName, Map<String, Object> columnValueMap) {
        if (StringUtils.isEmpty(tableName) || CollectionUtils.isEmpty(columnValueMap)) {
            throw new AppException("500", "获取列数据失败，向表中添加数据失败！");
        }
        tableName = tableName.trim();
        StringBuilder sqlStringBuilder = new StringBuilder();
        useDataBase(dataBaseName);
        sqlStringBuilder.append("insert into  " + "`" + tableName + "`" + "(");
        //拼接插入表字段
        for (String column : columnValueMap.keySet()) {
            sqlStringBuilder.append(" `" + column + "`, ");
        }
        //去掉插入表字段最后一个字符
        sqlStringBuilder.deleteCharAt(sqlStringBuilder.lastIndexOf(","));

        sqlStringBuilder.append(") VALUES( ");

        for (Object columnValue : columnValueMap.values()) {
            //判断列类型是否是整数
            if (columnValue instanceof Integer) {
                if (StringUtils.isEmpty(columnValue)) {
                    columnValue = 0 + "";
                }
                sqlStringBuilder.append(" " + columnValue + ", ");
            } else
                sqlStringBuilder.append(" '" + columnValue + "', ");
        }
        //去掉插入表值最后一个字符
        sqlStringBuilder.deleteCharAt(sqlStringBuilder.lastIndexOf(","));
        sqlStringBuilder.append(") ;");

        String sql = sqlStringBuilder.toString();
        if (logger.isDebugEnabled()) {
            logger.info(sql);
        }
        return jdbcTemplate.update(sql) > 0;
    }
}

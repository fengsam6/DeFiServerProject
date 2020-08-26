package org.cqupt.DeFiServerProject.entity;

public class ColumnInfo {
    private String columnType;
    private int columnLength;
    //列注释内容
    private String columnComment;
    //是否是主键
    private boolean primaryKey;
    //是否是递增
    private boolean increment;

    public String getColumnComment() {
        return columnComment;
    }

    public ColumnInfo setColumnComment(String columnComment) {
        this.columnComment = columnComment;
        return this;
    }

    public boolean isPrimaryKey() {
        return primaryKey;
    }

    public ColumnInfo setPrimaryKey(boolean primaryKey) {
        this.primaryKey = primaryKey;
        return this;
    }

    public boolean isIncrement() {
        return increment;
    }

    public ColumnInfo setIncrement(boolean increment) {
        this.increment = increment;
        return this;
    }

    public String getColumnType() {
        return columnType;
    }

    public void setColumnType(String columnType) {
        this.columnType = columnType;
    }

    public int getColumnLength() {
        return columnLength;
    }

    public void setColumnLength(int columnLength) {
        this.columnLength = columnLength;
    }

    public ColumnInfo() {
    }

    public ColumnInfo(String columnType, int columnLength) {
        this.columnType = columnType;
        this.columnLength = columnLength;
    }

}

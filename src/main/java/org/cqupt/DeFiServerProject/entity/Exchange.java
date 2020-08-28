package org.cqupt.DeFiServerProject.entity;

/**
 * 税率
 */
public class Exchange {
    private String name;
    private String exchange;
    private String getdate;
    private String hashcode;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getExchange() {
        return exchange;
    }

    public void setExchange(String exchange) {
        this.exchange = exchange;
    }

    public String getGetdate() {
        return getdate;
    }

    public void setGetdate(String getdate) {
        this.getdate = getdate;
    }

    public String getHashcode() {
        return hashcode;
    }

    public void setHashcode(String hashcode) {
        this.hashcode = hashcode;
    }

    public Exchange(String name, String exchange, String getdate, String hashcode) {
        this.name = name;
        this.exchange = exchange;
        this.getdate = getdate;
        this.hashcode = hashcode;
    }

    public Exchange() {
    }
}

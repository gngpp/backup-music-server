package com.zf1976.service.secutity.enums;

/**
 * @author ant
 * Create by Ant on 2020/6/15 上午11:04
 */
public enum SignArgEnums {

    /**
     * 默认sign键名
     */
    DEFAULT_SIGN("com.zf1976"),

    /**
     * credentials
     */
    CREDENTIALS("springboot");

    public String value;
    SignArgEnums(String s) {
        this.value=s;
    }
}

package com.zf1976.pojo.common.business.enums;

/**
 * @author mac
 * Create by Ant on 2020/6/12 10:46 下午
 */
public enum BusinessEnum {

    /**
     * 月会员
     */
    MONTH_MEMBERSHIP(30);

    /**
     * value
     */
    public final int value;

    BusinessEnum(int value){
        this.value = value;
    }
}

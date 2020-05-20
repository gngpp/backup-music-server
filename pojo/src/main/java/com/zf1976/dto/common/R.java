package com.zf1976.dto.common;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

/**
 * 请求响应对象
 *
 * @author lyqingye
 * @since 2020/3/24
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
@SuppressWarnings("rawtypes")
public class R<T> {

    /**
     * 响应是否成功
     */
    private boolean success;

    /**
     * 响应码
     */
    private String status;

    /**
     * 错误代码
     */
    @JsonInclude(JsonInclude.Include.NON_DEFAULT)
    private int errCode;

    /**
     * 错误消息
     */
    private String errMsg;

    /**
     * 错误详情
     */
    private String errDetail;

    /**
     * 响应数据
     */
    private T data;

    /**
     * 响应带数据的成功消息
     *
     * @param data 数据
     * @param <E>  E
     * @return 响应对象
     */
    public static <E> R<E> success(E data) {
        R<E> vo = new R<>();
        vo.setSuccess(true);
        vo.setStatus("200");
        vo.setData(data);
        return vo;
    }

    /**
     * 响应成功消息
     *
     * @param <E> E
     * @return 响应对象
     */
    public static <E> R<E> success() {
        return success(null);
    }

    /**
     * 响应成功消息
     *
     * @param <E> E
     * @return 响应对象
     */
    public static <E> R<E> success(Void sign) {
        return success();
    }

    /**
     * 返回失败消息
     * @param errMsg 失败消息
     * @return 响应对象
     */
    public static R fail(String errMsg) {
        return fail( errMsg,500);
    }

    /**
     * 返回失败消息
     * @param errMsg 错误消息
     * @param errCode 错误码
     * @return 响应对象
     */
    public static R fail(String errMsg, int errCode) {
        R vo = new R();
        vo.setSuccess(false);
        vo.setErrCode(errCode);
        vo.setErrMsg(errMsg);

        return vo;
    }
}

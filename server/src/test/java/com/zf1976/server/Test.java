package com.zf1976.server;

import com.power.common.util.UUIDUtil;
import com.zf1976.service.common.ResourcePathUtil;
import org.springframework.beans.factory.annotation.Value;

import java.io.IOException;


/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */

public class Test {


    public static void main(String[] args) throws IOException {
        System.out.println(ResourcePathUtil.getFileDataResourcesPath());
    }
}

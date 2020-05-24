package com.zf1976.server;

import com.zf1976.server.common.SpringUtils;
import java.io.IOException;


/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */
public class Test {

    @org.junit.jupiter.api.Test
    public void path() throws IOException {
        System.out.println(SpringUtils.getDataResourcesPath());
    }

}

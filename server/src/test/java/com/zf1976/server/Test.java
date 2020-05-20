package com.zf1976.server;

import com.zf1976.server.common.SpringUtils;

import java.io.File;
import java.io.IOException;
import java.net.URL;

/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */
public class Test {

    @org.junit.jupiter.api.Test
    public void path() throws IOException {
        final String canonicalPath = new File("").getCanonicalFile().getParent();
        System.out.println(canonicalPath);
        final String musicDataPath = SpringUtils.getMusicDataResourcesPath();
        System.out.println(musicDataPath);
    }

}

package com.zf1976.server;

import com.mysql.cj.x.protobuf.MysqlxDatatypes;

import javax.swing.plaf.metal.MetalIconFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;


/**
 * @author ant
 * Create by Ant on 2020/5/20 下午12:11
 */

public class Test {


    public static void main(String[] args) throws IOException {
        final InputStream resourceAsStream = Test.class.getResourceAsStream("/card_pwd.txt");
        byte[] b = new byte[100000];
        final int read = resourceAsStream.read(b);
        final String s = new String(b, 0, read);
        final String[] split = s.split("\n");
        for (String s1 : split) {
            final String[] split1 = s1.split("\t");
            for (String s2 : split1) {
                System.out.println(s2);
            }
        }
    }
}

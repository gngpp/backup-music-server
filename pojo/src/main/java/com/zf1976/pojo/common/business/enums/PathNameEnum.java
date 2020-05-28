package com.zf1976.pojo.common.business.enums;

/**
 * @author ant
 * Create by Ant on 2020/5/27 下午6:44
 */
public enum PathNameEnum {

    /**
     * 表示文件系统
     */
    FILE("file:"),

    /**
     * data路径
     */
    DATA("/data/"),

    /**
     * 用户头像路径
     */
    AVATAR_IMAGES("avatarImages/"),

    /**
     * 歌手头像路径
     */
    IMG_SINGER_PIC("img/singerPic/"),

    /**
     * 歌单封面路径
     */
    IMG_SONG_LIST_PIC("img/songList/"),

    /**
     * 歌曲封面路径
     */
    IMG_SONG_PIC("img/songPic/"),

    /**
     * 歌曲资源路径
     */
    SONG("song/");
    /**
     * 路径名
     */
    public final String path;

    PathNameEnum(String path) {
        this.path = path;
    }

}

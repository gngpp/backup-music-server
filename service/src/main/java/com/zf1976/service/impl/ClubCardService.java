package com.zf1976.service.impl;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.zf1976.dao.ClubCardDao;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.dao.MembershipDao;
import com.zf1976.pojo.common.business.enums.BusinessEnum;
import com.zf1976.pojo.common.business.exception.DataException;
import com.zf1976.pojo.common.business.exception.ExistUserException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.dto.app.MembershipDTO;
import com.zf1976.pojo.po.ClubCard;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.Membership;
import com.zf1976.service.base.BaseService;
import org.apache.ibatis.javassist.runtime.DotClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.HashMap;
import java.util.Objects;

/**
 * @author mac
 * Create by Ant on 2020/6/11 10:58 上午
 */
@Service
public class ClubCardService extends BaseService<ClubCardDao, ClubCard> {

    @Autowired
    private ClubCardDao clubCardDao;
}

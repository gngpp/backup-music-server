package com.zf1976.service;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.zf1976.dao.ClubCardDao;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.dao.MembershipDao;
import com.zf1976.pojo.common.business.enums.BusinessEnum;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.business.exception.ExistUserException;
import com.zf1976.pojo.dto.app.MembershipDTO;
import com.zf1976.pojo.po.ClubCard;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.po.Membership;
import com.zf1976.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.Objects;

/**
 * @author mac
 * Create by Ant on 2020/6/12 7:11 下午
 */
@Service
public class MembershipService extends BaseService<MembershipDao, Membership> {

    @Autowired
    private ClubCardDao clubCardDao;

    @Autowired
    private ConsumerDao consumerDao;

    @Autowired
    private MembershipDao membershipDao;

    /**
     * 查找卡密是否存在
     *
     * @param cardNum 卡号
     * @param pwdNum 卡密
     * @return 返回卡号id
     */
    public int findClubCard(String cardNum,String pwdNum){
        // 加密
        final String card = DigestUtils.md5DigestAsHex(cardNum.getBytes());
        // 加密
        final String pwd = DigestUtils.md5DigestAsHex(pwdNum.getBytes());

        // 卡密不存在抛出异常，充值失败
        final ClubCard clubCard = clubCardDao.selectOne(new LambdaQueryWrapper<ClubCard>()
                                                                .eq(ClubCard::getCardNumber, card)
                                                                .eq(ClubCard::getCardPwd, pwd));


        return clubCard.getId();
    }

    /**
     * 查找用户名是否存在,存在则返回用户
     *
     * @param username 客户名
     * @return 返回客户id
     */
    private int findConsumer(String username) {
        final LambdaQueryWrapper<Consumer> eq = new LambdaQueryWrapper<Consumer>().eq(Consumer::getUsername, username);
        final Consumer consumer = consumerDao.selectOne(eq);
        if (Objects.equals(consumer, null)) {
            throw new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER);
        }
        return consumer.getId();
    }

    /**
     * 确认该客户是否为会员身份
     *
     * @param consumerId 客户id
     * @return null
     */
    private Void membershipBusiness(int consumerId){

        final LambdaQueryWrapper<Membership> wrapper = new LambdaQueryWrapper<Membership>().eq(Membership::getConsumerId, consumerId);

        // 查询客户是否存在
        final Membership membership = membershipDao.selectOne(wrapper);

        // 不存在会员记录，表示未充值过或者已到期
        if (Objects.equals(membership,null)) {

            // 续费时间
            final long renewalTime = System.currentTimeMillis();

            // 到期时间，续费一个月
            final long expireTime = DateUtil.offsetDay(new Date(), BusinessEnum.MONTH_MEMBERSHIP.value).getTime();

            // 插入到期 续费时间
            membershipDao.insert(Membership.builder()
                                           .consumerId(consumerId)
                                           .renewalTime(renewalTime)
                                           .expireTime(expireTime)
                                           .build());
            // 设置客户为会员身份
            consumerDao.updateById(Consumer.builder()
                                           .id(consumerId)
                                           .isMember(true)
                                           .build());

        } else {
            // 到期时间戳
            final Long expireTime = membership.getExpireTime();

            // 原有到期时间上续费一个月
            final long newExpireTime = DateUtil.offsetDay(new Date(expireTime), BusinessEnum.MONTH_MEMBERSHIP.value).getTime();

            // 更新会员到期时间
            membership.setExpireTime(newExpireTime);

            // 更新到数据库
            membershipDao.updateById(membership);
        }
        return null;
    }

    /**
     * 取消客户会员身份
     *
     * @param consumerId 客户id
     * @return null
     */
    public Void membershipCancel(int consumerId){
        consumerDao.updateById(Consumer.builder()
                                       .id(consumerId)
                                       .isMember(false)
                                       .build());
        return null;
    }

    /**
     * 为客户续费会员
     *
     * @param dto dto
     * @return null
     */
    @Transactional(rollbackFor = Exception.class)
    public Void membershipOpen(MembershipDTO dto) {

        // 卡密id
        final int cardId = findClubCard(dto.getCardNumber(), dto.getCardPwd());

        // 客户id
        final int consumerId = findConsumer(dto.getUsername());

        // 充值服务
        membershipBusiness(consumerId);

        // 标记卡密已使用
        clubCardDao.deleteById(cardId);

        return null;
    }
}

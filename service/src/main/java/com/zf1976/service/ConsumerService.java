package com.zf1976.service;

import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.common.business.*;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.dto.ConsumerDTO;
import com.zf1976.pojo.po.Comment;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

/**
 * (Consumer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
public class ConsumerService extends BaseService<ConsumerDao, Consumer> {

    public static final Logger LOGGER = LoggerFactory.getLogger(ConsumerService.class);

    @Autowired
    private ConsumerDao consumerDao;

    @Autowired
    private ConsumerConvert consumerConvert;

    private Consumer consumer = null;

    /**
     * 获取所有客户
     *
     * @return vo list
     */
    public List<ConsumerVO> getAllUser(){
        final List<Consumer> consumers = super.lambdaQuery()
                                         .list();
        return consumerConvert.toVoList(consumers);
    }

    /**
     * 根据id查询客户
     *
     * @param id 客户id
     * @return vo
     */
    public ConsumerVO getById(Integer id) {
        final Consumer consumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        return consumerConvert.toVo(consumer);
    }

    /**
     * 新增用户
     *
     * @param consumerDTO dto
     * @return null
     */
    public Void addUser(ConsumerDTO consumerDTO){
        isExistUsername(consumerDTO.getUsername());
        isExistEmail(consumerDTO.getEmail());
        isExistPhone(consumerDTO.getPhoneNum());
        final Consumer consumer = consumerConvert.toPo(consumerDTO);
        consumerDao.insert(consumer);
        return null;
    }

    /**
     * 头像更新
     *
     * @param uploadFile 上传文件
     * @param id id
     * @return null
     */
    public Void updateAvatar(MultipartFile uploadFile,Integer id) {

        if (uploadFile.isEmpty()) {
            throw new NotDataException(BusinessMsgEnum.FAIL_EXCEPTION);
        }
        final Consumer consumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        try {
            final String oldName = uploadFile.getOriginalFilename();
            final String newName = Util.rename(oldName);
            final String folderPath = Util.getUploadAvatarFolderPath();
            final String uploadAvatarPath = Util.getUploadAvatarPath(newName);
            consumer.setAvatar(uploadAvatarPath);
            final File folder = new File(folderPath);
            if (folder.exists()){
                final File file = new File(folder, newName);
                uploadFile.transferTo(file);
                consumerDao.updateById(consumer);
                LOGGER.info("上传文件存在:{}",file);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 邮箱/用户名/手机号-索引
     * 更新客户信息
     *
     * @param consumerDTO dto
     * @return null
     */
    public Void updateUser(ConsumerDTO consumerDTO){

        LOGGER.info("{}", consumerDTO);
        final Consumer consumer = consumerConvert.toPo(consumerDTO);
        //手机号或邮箱有更新
        isNotUpdate(consumerDTO.getEmail(),
                    consumerDTO.getPhoneNum(),
                    consumerDTO.getId());
        consumerDao.updateById(consumer);
        return null;
    }

    /**
     * 判断手机 邮箱是否更改
     *
     * @param email 邮箱
     * @param phone 手机
     * @param id 客户id
     * @return boolean
     */
    private Void isNotUpdate(String email,String phone,Integer id){
        final Consumer beforeConsumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        LOGGER.info("{}",beforeConsumer);
        final boolean flag1 = email.equals(beforeConsumer.getEmail());

        final boolean flag2 = phone.equals(beforeConsumer.getPhoneNum());
        if (!flag1){
            isExistEmail(email);
        }else if (!flag2){
            isExistPhone(phone);
        }
        return null;
    }

    /**
     * 查询客户是否存在
     *
     * @param username 客户名
     * @return null
     */
    public Void isExistUsername(String username){
        try {
           this.consumer = super.lambdaQuery()
                                .eq(Consumer::getUsername, username)
                                .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (NotExistUserException e) {
            e.printStackTrace();
            return null;
        }
        if (this.consumer.getUsername().equals(username)){
            throw new ExistUserException(BusinessMsgEnum.EXIST_USER);
        }
        return null;
    }

    /**
     * 查询手机号是否存在
     *
     * @param phone 手机号
     * @return null
     */
    public Void isExistPhone(String phone) {
        try {
            this.consumer = super.lambdaQuery()
                                 .eq(Consumer::getPhoneNum, phone)
                                 .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (NotExistUserException e) {
            e.printStackTrace();
            return null;
        }
        if (this.consumer.getPhoneNum().equals(phone)){
            throw new ExistPhoneException(BusinessMsgEnum.EXIST_PHONE);
        }
        return null;
    }

    /**
     * 查询邮箱是否存在
     *
     * @param email 邮箱
     * @return null
     */
    public Void isExistEmail(String email) {
        try {
            this.consumer = super.lambdaQuery()
                                 .eq(Consumer::getEmail, email)
                                 .oneOpt().orElseThrow(() -> new NotExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (NotExistUserException e) {
            e.printStackTrace();
            return null;
        }
        if (this.consumer.getEmail().equals(email)){
            throw new ExistEmailException(BusinessMsgEnum.EXIST_EMAIL);
        }
        return null;
    }
}

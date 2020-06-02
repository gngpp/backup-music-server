package com.zf1976.service;

import com.power.common.util.FileUtil;
import com.zf1976.dao.ConsumerDao;
import com.zf1976.pojo.common.business.*;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import com.zf1976.pojo.common.convert.ConsumerConvert;
import com.zf1976.pojo.dto.admin.ConsumerDTO;
import com.zf1976.pojo.dto.app.UserInfoDTO;
import com.zf1976.pojo.dto.app.UserLoginDTO;
import com.zf1976.pojo.po.Consumer;
import com.zf1976.pojo.vo.ConsumerVO;
import com.zf1976.pojo.vo.app.UserInfoVO;
import com.zf1976.pojo.vo.app.UserMsgVO;
import com.zf1976.service.base.BaseService;
import com.zf1976.service.common.ResourcePathUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * (Consumer)表Service接口
 *
 * @author makejava
 * @since 2020-05-20 00:00:49
 */
@Service
@Slf4j
public class ConsumerService extends BaseService<ConsumerDao, Consumer> {

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
    public ConsumerVO getConsumerById(int id) {
        final Consumer consumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
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
        super.save(consumer);
        return null;
    }

    /**
     * 头像更新
     *
     * @param uploadFile 上传文件
     * @param id id
     * @return null
     */
    public Void updateAvatar(MultipartFile uploadFile,int id) {

        if (uploadFile.isEmpty()) {
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
        }
        final Consumer consumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        final String oldName = uploadFile.getOriginalFilename();
        final String newName = ResourcePathUtil.rename(oldName);
        final String folderPath = ResourcePathUtil.getUploadAvatarFolderPath();
        final String uploadAvatarPath = ResourcePathUtil.getUploadAvatarPath(newName);

        FileUtil.mkdirs(folderPath);

        try {
            if (log.isInfoEnabled()) {
                log.info("目录：{},已存在", folderPath);
            }
            uploadFile.transferTo(Paths.get(folderPath,newName));
            consumer.setAvatar(uploadAvatarPath);
            super.updateById(consumer);
            if (log.isInfoEnabled()) {
                log.info("文件存在:{}目录下", folderPath);
            }
        }catch (Exception e){
            if (log.isInfoEnabled()) {
                log.info("抛出异常信息:{}",e.getMessage());
            }
            throw new FileUploadException(BusinessMsgEnum.FILE_ERROR);
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

        final Consumer consumer = consumerConvert.toPo(consumerDTO);
        //手机号或邮箱有更新
        isUpdate(consumerDTO.getEmail(),
                    consumerDTO.getPhoneNum(),
                    consumerDTO.getId());
        super.updateById(consumer);
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
    private Void isUpdate(String email,String phone,int id){
        final Consumer beforeConsumer = super.lambdaQuery()
                                       .eq(Consumer::getId, id)
                                       .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));

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
    private Void isExistUsername(String username){
        try {
           this.consumer = super.lambdaQuery()
                                .eq(Consumer::getUsername, username)
                                .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (ExistUserException e) {
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
    private Void isExistPhone(String phone) {
        try {
            this.consumer = super.lambdaQuery()
                                 .eq(Consumer::getPhoneNum, phone)
                                 .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (ExistUserException e) {
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
    private Void isExistEmail(String email) {
        try {
            this.consumer = super.lambdaQuery()
                                 .eq(Consumer::getEmail, email)
                                 .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        } catch (ExistUserException e) {
            return null;
        }
        if (this.consumer.getEmail().equals(email)){
            throw new ExistEmailException(BusinessMsgEnum.EXIST_EMAIL);
        }
        return null;
    }

    /**
     * 前台用户注册
     *
     * @param signUpDTO dto
     * @return null
     */
    public Void signUp(UserInfoDTO signUpDTO){
        Consumer consumer = consumerConvert.toPo(signUpDTO);
        super.save(consumer);
        return null;
    }

    /**
     * 前台用户登陆
     *
     * @param loginDTO dto
     * @return null
     */
    public UserMsgVO doLogin(UserLoginDTO loginDTO){

        final Consumer consumer = super.lambdaQuery()
                                       .eq(Consumer::getUsername, loginDTO.getUsername())
                                       .eq(Consumer::getPassword, loginDTO.getPassword())
                                       .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        return consumerConvert.toUserMasVo(consumer);
    }

    /**
     * 前台用户修改信息
     *
     * @param userInfoDTO dto
     * @return null
     */
    public Void updateUserMsg(UserInfoDTO userInfoDTO){
        Consumer consumer = consumerConvert.toPo(userInfoDTO);
        //手机号或邮箱有更新
        isUpdate(userInfoDTO.getEmail(),
                userInfoDTO.getPhoneNum(),
                userInfoDTO.getId());
        super.updateById(consumer);
        return null;
    }

    /**
     * 前台查询用户信息
     * @param id 用户id
     * @return vo
     */
    public UserInfoVO getUserById(int id){
        Consumer consumer = super.lambdaQuery()
                .eq(Consumer::getId, id)
                .oneOpt().orElseThrow(() -> new ExistUserException(BusinessMsgEnum.NOT_EXIST_USER));
        return consumerConvert.toUserInfoVo(consumer);
    }

    /**
     * 用户id集合(由于前端统计单条记录，所以逐一查询)
     * @param ids id集合
     * @return 用户信息集合
     */
    public List<UserInfoVO> getUserByIds(List<Integer> ids){
        List<Consumer> consumers = new ArrayList<>();
        ids.forEach((id)->{
            consumers.add(super.getById(id));
        });
        return consumerConvert.toUserInfoVoList(consumers);
    }

}

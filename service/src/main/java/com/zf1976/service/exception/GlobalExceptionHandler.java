package com.zf1976.service.exception;

import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.business.ExistEmailException;
import com.zf1976.pojo.common.business.ExistPhoneException;
import com.zf1976.pojo.common.business.ExistUserException;
import com.zf1976.pojo.common.business.NotExistUserException;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.xml.crypto.Data;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午2:07
 */
@ControllerAdvice
@ResponseBody
@SuppressWarnings("rawtypes")
public class GlobalExceptionHandler {

    @ExceptionHandler(NullPointerException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerNullPointerException(NullPointerException e){
        return DataResult.fail(e.getMessage(), 500);
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerParameterException(MissingServletRequestParameterException e){
        return DataResult.fail(e.getMessage(), BusinessMsgEnum.PARAMETER_EXCEPTION.getCode());
    }

    @ExceptionHandler(ExistPhoneException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerPhoneException(ExistPhoneException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }

    @ExceptionHandler(ExistEmailException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerEmailException(ExistEmailException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }

    @ExceptionHandler(ExistUserException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerUserException(ExistUserException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }

    @ExceptionHandler(NotExistUserException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerNotUserException(NotExistUserException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }
}

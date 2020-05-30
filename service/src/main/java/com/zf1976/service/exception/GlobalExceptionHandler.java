package com.zf1976.service.exception;

import com.zf1976.pojo.common.DataResult;
import com.zf1976.pojo.common.business.*;
import com.zf1976.pojo.common.business.enums.BusinessMsgEnum;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartException;

/**
 * @author ant
 * Create by Ant on 2020/5/22 下午2:07
 */
@RestControllerAdvice
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

    @ExceptionHandler(ExistSingerException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerSingerException(ExistSingerException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }

    @ExceptionHandler(DataException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerDataException(DataException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }

    @ExceptionHandler(FileOverMaxException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerFileOverMaxException(MultipartException e){
        final BusinessMsgEnum failException = BusinessMsgEnum.DATA_FAIL;
        return DataResult.fail(e.getMessage(),failException.getCode());
    }

    @ExceptionHandler(FileUploadException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public DataResult handlerFileUploadException(FileUploadException e){
        return DataResult.fail(e.getMsg(),e.getCode());
    }
}

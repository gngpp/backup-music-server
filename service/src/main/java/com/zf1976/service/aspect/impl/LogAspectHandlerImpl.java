package com.zf1976.service.aspect.impl;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.zf1976.service.aspect.AspectBase;
import com.zf1976.service.aspect.annotation.Log;
import lombok.extern.slf4j.Slf4j;
import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * Profile声明只能在开发环境或者测试环境使用
 *
 * @author ant
 **/
@Aspect
@Component
@Slf4j
@Profile({"dev", "test"})
public class LogAspectHandlerImpl implements AspectBase {

    /**
     * 换行符
     */
    private static final String LINE_SEPARATOR = System.lineSeparator();

    /**
     * 以自定义 @Log 注解为切点
     */
    @Override
    @Pointcut("@annotation(com.zf1976.service.aspect.annotation.Log)")
    public void pointCut() {}

    /**
     * 在切点之前织入
     * @param joinPoint 切点
     * @throws Throwable 向上抛异常
     */
    @Override
    @Before("pointCut()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        assert attributes != null;
        HttpServletRequest request = attributes.getRequest();

        // 获取 @Log 注解的描述信息
        String methodDescription = getAspectLogDescription(joinPoint);



        if (log.isInfoEnabled()) {

            log.info("========================================== Start ==========================================");
            log.info("URL            : {}", request.getRequestURL().toString());
            log.info("Description    : {}", methodDescription);
            log.info("HTTP Method    : {}", request.getMethod());
            log.info("Class Method   : {}.{}", joinPoint.getSignature().getDeclaringTypeName(), joinPoint.getSignature().getName());
            log.info("IP             : {}", request.getRemoteAddr());
            log.info("Request Args   : {}", new ObjectMapper().writeValueAsString(Arrays.toString(joinPoint.getArgs())));
        }
    }

    /**
     * 在切点之后织入
     */
    @Override
    @After("pointCut()")
    public void doAfter() {
        if (log.isInfoEnabled()) {
            log.info("=========================================== End ===========================================" + LINE_SEPARATOR);
        }
    }

    /**
     * 环绕
     * @param proceedingJoinPoint 程序切点
     * @return Object
     * @throws Throwable 向上抛异常
     */
    @Override
    @Around("pointCut()")
    public Object doAround(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        long startTime = System.currentTimeMillis();
        Object result = proceedingJoinPoint.proceed();
        if (log.isInfoEnabled()) {
            log.info("Response Args  : {}", new ObjectMapper().writeValueAsString(result.toString()));
            log.info("Time-Consuming : {} ms", System.currentTimeMillis() - startTime);
        }
        return result;
    }


    /**
     * 获取切面注解的描述
     *
     * @param joinPoint 切点
     * @return String 描述信息
     * @throws Exception 向上抛异常
     */
    @Override
    public String getAspectLogDescription(JoinPoint joinPoint) throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object [] arguments = joinPoint.getArgs();
        final Class<?> aClass = Class.forName(targetName);
        Method [] methods = aClass.getMethods();
        StringBuilder description = new StringBuilder("");
        for (Method method : methods) {
            if (method.getName().equals(methodName)) {
                final Class<?>[] classes = method.getParameterTypes();
                if (classes.length ==arguments.length) {
                    description.append(method.getAnnotation(Log.class).description());
                    break;
                }
            }
        }
        return description.toString();
    }

}

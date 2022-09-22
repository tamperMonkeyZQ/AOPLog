package com.zextra.aoplog.Aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

import static java.lang.Thread.sleep;

@Aspect
@Component
public class LogAspect {
    @Before("execution(* com.zextra.aoplog.controller..*(..))")
    public void beforeAdvice(JoinPoint point){
        String methodName = point.getSignature().getName();
        List<Object> args = Arrays.asList(point.getArgs());
        try {
            sleep(30000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println("@Before 前置通知 : 方法名: 【 " + methodName + " 】and args are : " + args);
    }
}

package com.oh.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

// AOP 관점지향형

@Aspect
@Log4j
@Component
public class LogAdvice {
	@Before("execution(* com.kktshop.service.SampleService*.*(..))")
	public void logBefore() {
		log.info("===================");
	}
}

package springmvc.service;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.slf4j.Logger;

@Aspect

@Component

public class LoggingAspect {

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Before("execution(* springmvc.*(..))")
	public void logBeforeAllMethods(JoinPoint joinPoint) {
		LOGGER.debug("****LoggingAspect."
				+ "logBeforeAllMethods() : "
				+ joinPoint.getSignature().getName());
	}
	@After("execution(* springmvc.*(..))")
	public void logAfterAllMethods(JoinPoint joinPoint) {
		LOGGER.debug("****LoggingAspect." + "logAfterAllMethods() : "
				+ joinPoint.getSignature().getName());
	}
	 

}
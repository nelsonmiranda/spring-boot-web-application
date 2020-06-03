package com.in28minutes.springboot.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ExceptionController {

	private Log LOG = LogFactory.getLog(ExceptionController.class);
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleError(HttpServletRequest request, Exception ex) {
		LOG.error("Request: " + request.getRequestURL() + " raised " + ex.getMessage());
		ModelAndView mav = new ModelAndView("error");
		mav.addObject("exception", ex.getMessage());
		mav.addObject("url", request.getRequestURL());
		return mav;
	}
	
}

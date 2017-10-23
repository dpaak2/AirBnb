package com.aibnb.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HYController {
	private static final Logger logger = LoggerFactory.getLogger(HYController.class);
	public void insert() {
		logger.info("Welcome home! The client  {}." ,"ENTERED!! ");
	}
}

package com.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class DemoController {

	@RequestMapping(value = "")
	public String heloWord() {
		return "HelloWord";
	}




}

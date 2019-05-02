package com.environment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EnvironmnetController {
	
	@RequestMapping("/globalEnv")
	public String globalEnv() {
		return "globalEnv";
	}
	@RequestMapping("/localEnv")
	public String localEnv() {
		return "localEnv";
	}
	@RequestMapping("/envEdu")
	public String envEdu() {
		return "envEdu";
	}
	@RequestMapping("/envPolicy")
	public String envPolicy() {
		return "envPolicy";
	}
	@RequestMapping("/envConsProt")
	public String envConsProt() {
		return "envConsProt";
}
	
}

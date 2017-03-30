package com.accenture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping(value ="/hola")
	public String sayHello (Model model) {
		
		model.addAttribute("llaveSaludo", "Que rollo!");
		
		return "hello";
	}
	
}

package br.com.showtv.premiomil.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
	@Author: rique
*/

@Controller
public class SistemaController {
	
	@RequestMapping("home")
	public String home() {
		System.out.println("Acessando a HomePage.");
		
		return "index";
	}
}


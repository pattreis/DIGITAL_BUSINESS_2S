package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//M�todo que atende uma requisi��o
	
	@RequestMapping("/home")
	public String home() {
		// Retorna a view (pasta e arquivo)
		
		return "home/index";
	}
}

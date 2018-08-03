package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contato")
public class ContactController {

	//Método que atende uma requisição
	
	@GetMapping("cadastrar")
	public String cadastrar() {
		// Retorna a view (pasta e arquivo)
		return "contato/cadastrar";
	}
	
	@PostMapping("enviar")
	public String enviar(String nome, int telefone) {
		System.out.println(nome + "" + telefone);
		return "contato/success";
	}
}

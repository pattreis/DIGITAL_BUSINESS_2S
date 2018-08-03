package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fiap.spring.model.Pessoa;

@Controller
@RequestMapping("/pessoa")
public class PessoaController {

	@GetMapping("cadastrar")
	public String cadastro() {
		// Retorna a view (pasta e arquivo)
		return "pessoa/cadastrar";
	}
	@PostMapping("cadastrar")
	public String cadastrar(Pessoa pessoa) {
		System.out.println(pessoa.getNome() + " - " + pessoa.getIdade() + " Aposentado: " + pessoa.isAposentado());
		return "pessoa/success";
	}
}

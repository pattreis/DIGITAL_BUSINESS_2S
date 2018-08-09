package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("carro")
public class CarroController {
	
	
	@GetMapping("cadastrar")
	public String abrirCadastrar() {
		return "carro/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Carro carro) {
		
		System.out.println(carro.getModelo());
		System.out.println(carro.getMarca());
		System.out.println(carro.isNovo());
		System.out.println(carro.getCambio());
		System.out.println(carro.getAno());
		ModelAndView retorno = new ModelAndView("carro/sucesso");
		retorno.addObject("car", carro);
		retorno.addObject("msg", "SHOW BUSINESS!!!");
		return retorno;
	}

}


package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.GeneroDAO;
import br.com.fiap.spring.model.Genero;

@Controller
@RequestMapping("genero")
public class GeneroController {

	@Autowired
	private GeneroDAO dao;
	
	@GetMapping("cadastrar")
	public String abrirForm(Genero genero) {
		return "genero/form";
	}
	
	@Transactional
	@PostMapping("cadastrar")	
	public String cadastrar(RedirectAttributes r, Genero genero) {
		
		dao.cadastrar(genero);
		r.addFlashAttribute("msg", "Cadastrado com sucesso!");
		
		return "redirect:/genero/cadastrar";
	}
	
	
	
	
	
}

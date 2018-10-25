package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.GeneroDAO;
import br.com.fiap.spring.dao.JogoDAO;
import br.com.fiap.spring.model.Jogo;
import br.com.fiap.spring.model.Plataforma;

@Controller
@RequestMapping("jogo")
public class JogoController {

	@Autowired
	private JogoDAO dao;

	@Autowired
	private GeneroDAO gDao;

	@GetMapping("cadastrar")
	public ModelAndView abrirForm(Jogo jogo) {
		return new ModelAndView("jogo/form")
				.addObject("generos", gDao.listar())
				.addObject("plataformas", Plataforma.values());
	}

	@Transactional
	@PostMapping("cadastrar")
	public String cadastrar(Jogo jogo, RedirectAttributes r) {

		dao.cadastrar(jogo);
		r.addFlashAttribute("msg", "O Jogo " + jogo.getNome() + " foi cadastrado com sucesso!");

		return "redirect:/jogo/cadastrar";
	}
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("jogo/listar")
				.addObject("jogos", dao.listar());
	}

}

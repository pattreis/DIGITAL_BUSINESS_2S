package br.com.fiap.jpa.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.jpa.dao.ProdutoDAO;
import br.com.fiap.jpa.model.Produto;

@Controller
@RequestMapping("produto")
public class ProdutoController {

	@Autowired
	private ProdutoDAO dao;
	
	@GetMapping("cadastrar")
	public String abrirForm() {		
		return "produto/form";		
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Produto produto) {		
		System.out.println(produto.getNome());
		System.out.println(produto.getPreco());
		System.out.println(produto.isPerecivel());
		
		dao.inserir(produto);
		
		ModelAndView mv = new ModelAndView("produto/form")
				.addObject("msg", "Cadastrado com sucesso!");
				
		return mv;
	}
	
	@GetMapping("listar")
	public ModelAndView listar(){
		
		ModelAndView mv = new ModelAndView("produto/listar")
				.addObject("lista", dao.listar());		
		return mv;
	}
	
	
}

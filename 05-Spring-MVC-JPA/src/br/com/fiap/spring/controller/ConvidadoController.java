package br.com.fiap.spring.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import br.com.fiap.jpa.dao.ConvidadoDAO;
import br.com.fiap.jpa.exception.KeyNotFoundException;
import br.com.fiap.spring.model.Convidado;

@Controller
@RequestMapping("convidado")
public class ConvidadoController {

	@Autowired
	private ConvidadoDAO dao;

	@Transactional
	@PostMapping("confirmar")
	public String confirmar(int id, RedirectAttributes r) {
		dao.confirmar(id);
		r.addFlashAttribute("msg", "Convidado confirmado");
		return "redirect:/convidado/listar";
	}
	
	@Transactional
	@PostMapping("editar")
	public String efetivarEdicao(Convidado convidado, RedirectAttributes r) {
		dao.atualizar(convidado);
		r.addFlashAttribute("msg","Convidado atualizado");
		return "redirect:/convidado/listar";
	}
	
	@GetMapping("editar/{codigo}")
	public ModelAndView editar(@PathVariable("codigo") int codigo) {		
		return new ModelAndView("convidado/edicao")
				.addObject("convidado", dao.pesquisar(codigo));
		
	}
	

	@GetMapping("listar")
	public ModelAndView abrirLista() {
		return new ModelAndView("convidado/lista").addObject("convidados", dao.listar());
	}

	@GetMapping("cadastrar")
	public String abrirForm() {
		return "convidado/cadastro";
	}

	@Transactional
	@PostMapping("cadastrar")
	public String processarForm(Convidado convidado, RedirectAttributes r) {
		dao.inserir(convidado);
		r.addFlashAttribute("msg", "Convidado registrado!");
		return "redirect:/convidado/cadastrar";
	}

	@Transactional
	@PostMapping("excluir")
	public String excluir(int codigo, RedirectAttributes r) {

		try {
			dao.remover(codigo);
		} catch (KeyNotFoundException e) {
			e.printStackTrace();
		}

		r.addFlashAttribute("msg", "Convidado removido!");
		return "redirect:/convidado/listar";
	}

	@PostMapping("pesquisar")
	public ModelAndView pesquisarPorNome(String nome) {

		return new ModelAndView("convidado/lista").addObject("convidados", dao.pesquisaPor(nome));

	}

}
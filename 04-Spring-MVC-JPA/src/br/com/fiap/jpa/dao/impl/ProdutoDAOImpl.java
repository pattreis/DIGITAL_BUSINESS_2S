package br.com.fiap.jpa.dao.impl;

import br.com.fiap.jpa.model.Produto;

import java.util.List;

import org.springframework.stereotype.Repository;
import br.com.fiap.jpa.dao.ProdutoDAO;

@Repository
public class ProdutoDAOImpl 
					extends GenericDAOImpl<Produto, Integer>
											implements ProdutoDAO{

	@Override
	public List<Produto> buscarPorNome(String nome) {
		// TODO Auto-generated method stub
		return em.createQuery("from Produto p where p.nome like :n",Produto.class)
				.setParameter("n", "%"+nome+"%").getResultList();
	}

}
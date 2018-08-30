package br.com.fiap.jpa.dao.impl;

import br.com.fiap.jpa.model.Produto;
import org.springframework.stereotype.Repository;
import br.com.fiap.jpa.dao.ProdutoDAO;

@Repository
public class ProdutoDAOImpl 
					extends GenericDAOImpl<Produto, Integer>
											implements ProdutoDAO{

}
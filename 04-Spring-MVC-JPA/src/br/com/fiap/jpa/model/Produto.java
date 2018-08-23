package br.com.fiap.jpa.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="T_PRODUTO")
@SequenceGenerator(name="produto", sequenceName="SQ_T_PRODUTO", allocationSize = 1)
public class Produto {
	
	
	@Id
	@GeneratedValue(generator="produto", strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@Column(name="NM_PRODUTO", nullable = false, length = 100)	
	private String nome;
	
	@Column(name="VL_PRODUTO", nullable = false)
	private double preco;
	
	@Column(name="ST_PERECIVEL")
	private boolean perecivel;
	

	public Produto() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Produto(int codigo, String nome, double preco, boolean perecivel) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.preco = preco;
		this.perecivel = perecivel;
	}


	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public boolean isPerecivel() {
		return perecivel;
	}

	public void setPerecivel(boolean perecivel) {
		this.perecivel = perecivel;
	}
	
	
	

}

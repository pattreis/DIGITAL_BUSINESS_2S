package br.com.fiap.spring.model;

public class Cliente {

	private String nome;

	private int idade;

	private boolean chn;

	private String genero;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public boolean isChn() {
		return chn;
	}

	public void setChn(boolean chn) {
		this.chn = chn;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

}

package br.com.fiap.spring.model;

public class Carro {

	private String modelo;
	
	private String marca;
	
	private boolean novo;
	
	private Cambio cambio;
	
	private int ano;

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public boolean isNovo() {
		return novo;
	}

	public void setNovo(boolean novo) {
		this.novo = novo;
	}
	
	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public Cambio getCambio() {
		return cambio;
	}

	public void setCambio(Cambio cambio) {
		this.cambio = cambio;
	}
	
	
}

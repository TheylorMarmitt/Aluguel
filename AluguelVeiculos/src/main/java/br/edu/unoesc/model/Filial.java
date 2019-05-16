package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Filial")
public class Filial {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private String nome;
	private String cidade;
	private String uf;

	public Filial() {
	}

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Filial(long codigo, String nome, String cidade, String uf) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.cidade = cidade;
		this.uf = uf;

	}

	@Override
	public String toString() {
		return this.nome + " - " + this.cidade + "(" + this.uf + ")";
	}

}

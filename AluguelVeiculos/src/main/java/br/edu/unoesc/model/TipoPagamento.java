package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TipoPagamento")
public class TipoPagamento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private String descricao;
	private Double desconto;

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Double getDesconto() {
		return desconto;
	}

	public void setDesconto(Double desconto) {
		this.desconto = desconto;
	}

	public TipoPagamento(long codigo, String descricao, Double desconto) {
		super();
		this.codigo = codigo;
		this.descricao = descricao;
		this.desconto = desconto;
	}

	public TipoPagamento() {

	}

	@Override
	public String toString() {
		return this.descricao + " : " + this.desconto.toString();
	}

	
}

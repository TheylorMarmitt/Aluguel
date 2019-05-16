package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TipoAluguel")
public class TipoAluguel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private String descricao;
	private Double valor;
	private Double taxa;

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Double getTaxa() {
		return taxa;
	}

	public void setTaxa(Double taxa) {
		this.taxa = taxa;
	}

	public TipoAluguel() {

	}

	public TipoAluguel(long codigo, String descricao, Double valor, Double taxa) {
		super();
		this.codigo = codigo;
		this.descricao = descricao;
		this.valor = valor;
		this.taxa = taxa;
	}

	@Override
	public String toString() {
		return this.descricao + " : " + this.valor.toString();
	}

}

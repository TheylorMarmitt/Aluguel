package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="configuracoes")
public class Configuracoes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	
	private Integer percentValorKm;
	
	private Integer percentTaxaDiaria;

	
	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public Integer getPercentValorKm() {
		return percentValorKm;
	}

	public void setPercentValorKm(Integer percentValorKm) {
		this.percentValorKm = percentValorKm;
	}

	public Integer getPercentTaxaDiaria() {
		return percentTaxaDiaria;
	}

	public void setPercentTaxaDiaria(Integer percentTaxaDiaria) {
		this.percentTaxaDiaria = percentTaxaDiaria;
	}
	
	
}

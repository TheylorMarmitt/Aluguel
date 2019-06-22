package br.edu.unoesc.vo;

import java.math.BigDecimal;
import java.math.RoundingMode;

import br.edu.unoesc.model.Configuracoes;

public class ValoresTaxaVO {

	private BigDecimal valorDiario;
	private BigDecimal taxaPorKm;
	
	public ValoresTaxaVO(Double valorCarro, Configuracoes configFilial ) {
		  
		this.valorDiario = BigDecimal.valueOf((valorCarro*configFilial.getPercentTaxaDiaria())/100).setScale(2, RoundingMode.HALF_EVEN);
		this.taxaPorKm =  BigDecimal.valueOf((valorCarro*configFilial.getPercentValorKm())/100).setScale(2, RoundingMode.HALF_EVEN);

	}

	public BigDecimal getValorDiario() {
		
		return valorDiario;
	}

	public BigDecimal getTaxaPorKm() {
	
		return taxaPorKm;
	
	}


	
}

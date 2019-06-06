package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Devolucao")
public class Devolucao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataChegada;
	@NotNull(message="O campo kilometro de chegada é obrigatorio")
	private Double kilometroChegada;
	private Double valorTotal;
	
	@ManyToOne
	@JoinColumn(name = "aluguel_id")
	private Aluguel aluguel;
	
	/**
	 * 
	 * @return quilometros percorridos durante o aluguel do veiculo
	 */
	public Double calculaKms() {
		if(validaKm()) {
			Double km = this.kilometroChegada - this.aluguel.getQuilometrosSaida();			
			return km;
		}
		return null;
	}
	
	public boolean validaKm() {
		if(this.kilometroChegada > this.aluguel.getQuilometrosSaida()) {
			return true;
		}
		return false;
	}

	/**
	 * (dias * taxa) + (valor * km/1000) 
	 * atualiza valorTotal
	 */
	public void calculaValor() {
		long dias = dias();
		this.valorTotal =(dias * this.aluguel.getTaxa()) + (this.aluguel.getValor() * calculaKms()/1000);
	}
	
	public long dias() {
	  long millisegundos = this.dataChegada.getTime() - aluguel.getDataAluguel().getTime();     
	  return (millisegundos/(1000*60*60*24));
	}
	
	public void disponibilizaCarro() {
		this.aluguel.getCarro().setDisponivel(true);
	}
	
	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public Date getDataChegada() {
		return dataChegada;
	}

	public void setDataChegada(Date dataChegada) {
		this.dataChegada = dataChegada;
	}

	public Double getKilometroChegada() {
		return kilometroChegada;
	}

	public void setKilometroChegada(Double kilometroChegada) {
		this.kilometroChegada = kilometroChegada;
	}

	public Aluguel getAluguel() {
		return aluguel;
	}

	public void setAluguel(Aluguel aluguel) {
		this.aluguel = aluguel;
	}

	public Double getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}

	public Devolucao(Integer codigo, Date dataChegada, Double kilometroChegada, Aluguel aluguel,
			Double valorTotal) {
		super();
		this.codigo = codigo;
		this.dataChegada = dataChegada;
		this.kilometroChegada = kilometroChegada;
		this.aluguel = aluguel;
		this.valorTotal = valorTotal;
	}

	public Devolucao() {

	}

	@Override
	public String toString() {
		return "Devolucao [codigo=" + codigo + ", dataChegada=" + dataChegada + ", kilometroChegada="
				+ kilometroChegada + ", aluguel=" + aluguel + ", valorTotal=" + valorTotal + "]";
	}

}

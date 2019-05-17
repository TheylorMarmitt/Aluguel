package br.edu.unoesc.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Devolucao")
public class Devolucao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private LocalDate dataChegada;
	private Double quilometroChegada;
	private Double valorTotal;
	
	@ManyToOne
	@JoinColumn(name = "aluguel_id")	
	private Aluguel aluguel;
	
	/**
	 * 
	 * @return quilometros percorridos durante o aluguel do veiculo
	 */
	public Double calculaQuilometros() {
		if(validaKm()) {
			Double km = this.quilometroChegada - this.aluguel.getQuilometrosSaida();			
			return km;
		}
		return null;
	}
	
	public boolean validaKm() {
		if(this.quilometroChegada > this.aluguel.getQuilometrosSaida()) {
			return true;
		}
		return false;
	}

	/**
	 * (dias * taxa) + (valor * km/1000) 
	 * atualiza valorTotal
	 */
//	public void calculaValor() {
//		long dias = ChronoUnit.DAYS.between(this.aluguel.getDataAluguel(), this.dataChegada);
//		this.valorTotal =(dias * this.aluguel.getTipoAluguel().getTaxa()) + (this.aluguel.getTipoAluguel().getValor() * calculaQuilometros()/1000);
//	}
	
	public void disponibilizaCarro() {
		this.aluguel.getCarro().setDisponivel(true);
	}
	
	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public LocalDate getDataChegada() {
		return dataChegada;
	}

	public void setDataChegada(LocalDate dataChegada) {
		this.dataChegada = dataChegada;
	}

	public Double getQuilometroChegada() {
		return quilometroChegada;
	}

	public void setQuilometroChegada(Double quilometroChegada) {
		this.quilometroChegada = quilometroChegada;
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

	public Devolucao(Integer codigo, LocalDate dataChegada, Double quilometroChegada, Aluguel aluguel,
			Double valorTotal) {
		super();
		this.codigo = codigo;
		this.dataChegada = dataChegada;
		this.quilometroChegada = quilometroChegada;
		this.aluguel = aluguel;
		this.valorTotal = valorTotal;
	}

	public Devolucao() {

	}

	@Override
	public String toString() {
		return "Devolucao [codigo=" + codigo + ", dataChegada=" + dataChegada + ", quilometroChegada="
				+ quilometroChegada + ", aluguel=" + aluguel + ", valorTotal=" + valorTotal + "]";
	}

}

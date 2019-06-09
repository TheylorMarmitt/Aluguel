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
@Table(name = "Aluguel")
public class Aluguel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataAluguel;
	@NotNull(message="Favor informar Kilometros de saída do veículo")
	private Double kmSaida;
	@NotNull(message="Favor imformar taxa para calculos futuros")
	private Double taxa;
	@NotNull(message="Favor imformar valor para calculos futuros")
	private Double valor;
	private boolean ativo;

	@ManyToOne
	@JoinColumn(name = "carro_id")
	@NotNull(message="Favor informar veículo")
	private Carro carro = new Carro();

	@ManyToOne
	@JoinColumn(name = "funcionario_id")
	@NotNull(message="Favor informar funcionário")
	private Funcionario funcionario = new Funcionario();

	@ManyToOne
	@JoinColumn(name = "cliente_id")
	@NotNull(message="Favor informar cliente")
	private Cliente cliente = new Cliente();
	

	public boolean confirmaAluguel() {
		if (this.carro.isDisponivel()) {
			this.carro.setDisponivel(false);
			return true;
		} else {
			return false;
		}
	}

	public Aluguel() {

	}

	public Aluguel(long codigo, Date dataAluguel, Double kmSaida, Double valor, Double taxa, boolean ativo, Carro carro,
			Funcionario funcionario, Cliente cliente) {
		super();
		this.codigo = codigo;
		this.dataAluguel = dataAluguel;
		this.kmSaida = kmSaida;
		this.taxa = taxa;
		this.valor = valor;
		this.ativo = ativo;
		this.carro = carro;
		this.funcionario = funcionario;
		this.cliente = cliente;
	}

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public Date getDataAluguel() {
		return dataAluguel;
	}

	public void setDataAluguel(Date dataAluguel) {
		this.dataAluguel = dataAluguel;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public Double getQuilometrosSaida() {
		return kmSaida;
	}

	public void setQuilometrosSaida(Double quilometrosSaida) {
		this.kmSaida = quilometrosSaida;
	}

	public Carro getCarro() {
		return carro;
	}

	public void setCarro(Carro carro) {
		this.carro = carro;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Double getTaxa() {
		return taxa;
	}

	public void setTaxa(Double taxa) {
		this.taxa = taxa;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	@Override
	public String toString() {
		return "Aluguel [codigo=" + codigo + ", dataAluguel=" + dataAluguel + ", quilometrosSaida=" + kmSaida
				+ ", carro=" + carro + ", funcionario=" + funcionario + ", cliente=" + cliente + "]";
	}

}
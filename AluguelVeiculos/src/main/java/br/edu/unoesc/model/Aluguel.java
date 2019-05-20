package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Aluguel")
public class Aluguel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataAluguel;
	private Double kmSaida;
	private boolean ativo;
	
	@ManyToOne
	@JoinColumn(name = "carro_id")
	private Carro carro;
	
	@ManyToOne
	@JoinColumn(name = "funcionario_id")
	private Funcionario funcionario;
	
	
	@ManyToOne
	@JoinColumn(name = "cliente_id")
	private Cliente cliente;
	
	public boolean confirmaAluguel() {
		if(this.carro.isDisponivel()) {
			this.carro.setDisponivel(false);
			return true;
		}else {
			return false;
		}
	}


	public Aluguel() {
		
	}

	public Aluguel(long codigo, Date dataAluguel, Double kmSaida, boolean ativo, Carro carro,
			Funcionario funcionario, Cliente cliente) {
		super();
		this.codigo = codigo;
		this.dataAluguel = dataAluguel;
		this.kmSaida = kmSaida;
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
	

	@Override
	public String toString() {
		return "Aluguel [codigo=" + codigo + ", dataAluguel=" + dataAluguel + ", quilometrosSaida=" + kmSaida
				+ ", carro=" + carro + ", funcionario=" + funcionario + ", cliente=" + cliente + "]";
	}




}
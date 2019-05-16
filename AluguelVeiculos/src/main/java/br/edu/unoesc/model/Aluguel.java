package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Aluguel")
public class Aluguel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private Date dataAluguel;
	private Double kmSaida;
	
	@ManyToOne
	@JoinColumn(name = "carro_id")
	private Carro carro;
	
	@ManyToOne
	@JoinColumn(name = "filial_id")
	private Filial filial;
	
	@ManyToOne
	@JoinColumn(name = "funcionario_id")
	private Funcionario funcionario;
	
	@ManyToOne
	@JoinColumn(name = "tipoAluguel_id")
	private TipoAluguel tipoAluguel;
	
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

	public Aluguel(long codigo, Date dataAluguel, Double kmSaida, Carro carro, Filial filial,
			Funcionario funcionario, TipoAluguel tipoAluguel, Cliente cliente) {
		super();
		this.codigo = codigo;
		this.dataAluguel = dataAluguel;
		this.kmSaida = kmSaida;
		this.carro = carro;
		this.filial = filial;
		this.funcionario = funcionario;
		this.tipoAluguel = tipoAluguel;
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

	public Filial getFilial() {
		return filial;
	}

	public void setFilial(Filial filial) {
		this.filial = filial;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public TipoAluguel getTipoAluguel() {
		return tipoAluguel;
	}

	public void setTipoAluguel(TipoAluguel tipoAluguel) {
		this.tipoAluguel = tipoAluguel;
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
				+ ", carro=" + carro + ", filial=" + filial + ", funcionario=" + funcionario + ", tipoAluguel="
				+ tipoAluguel + ", cliente=" + cliente + "]";
	}

}
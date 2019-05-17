package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Funcionario")
public class Funcionario extends Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
	private String senha;
	private Double salario;
	private Date dataAdmissao;
	private Date dataDemissao;
	
	public Funcionario() {

	}

	public Funcionario(long codigo, String senha, Double salario, Date dataAdmissao, Date dataDemissao) {
		this.codigo = codigo;
		this.senha = senha;
		this.salario = salario;
		this.dataAdmissao = dataAdmissao;
		this.dataDemissao = dataDemissao;
	}


	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public long getCodigo() {
		return codigo;
	}
	public void setDataAdmissao(Date dataAdmissao) {
		this.dataAdmissao = dataAdmissao;
	}
	public Date getDataAdmissao() {
		return dataAdmissao;
	}
	public void setDataDemissao(Date dataDemissao) {
		this.dataDemissao = dataDemissao;
	}
	public Date getDataDemissao() {
		return dataDemissao;
	}
	
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Double getSalario() {
		return salario;
	}

	public void setSalario(Double salario) {
		this.salario = salario;
	}

	@Override
	public String toString() {
		return this.codigo + " : " + this.getNome();
	}

	

}
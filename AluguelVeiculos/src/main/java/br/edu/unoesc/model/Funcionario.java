package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Funcionario")
@PrimaryKeyJoinColumn(name = "codigo")
public class Funcionario extends Pessoa {

	@NotNull(message="A senha é obrigatória")
	@Size(min = 3, max = 30, message = "A senha deve ser válida")
	private String senha;
	@NotNull(message="O salário é obrigatório")
	private Double salario;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataAdmissao;
	private Date dataDemissao;
	
	public Funcionario() {

	}

	public Funcionario(String senha, Double salario, Date dataAdmissao, Date dataDemissao) {
		this.senha = senha;
		this.salario = salario;
		this.dataAdmissao = dataAdmissao;
		this.dataDemissao = dataDemissao;
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


}
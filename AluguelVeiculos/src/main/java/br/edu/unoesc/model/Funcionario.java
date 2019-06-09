package br.edu.unoesc.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
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

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataAdmissao;
	
	private Date dataDemissao;
	
	@ManyToOne
	private Filial filial = new Filial();
	
	public Funcionario() {

	}
	
	public String converteDataAdmissao(){
		SimpleDateFormat in= new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat out = new SimpleDateFormat("dd/MM/yyyy");
		try {
			
		if(this.dataAdmissao != null) {
			return out.format(in.parse(this.dataAdmissao.toString()));
		}
		else {
			return "";
		}
		
		} catch (ParseException e) {
			return "Erro ao pegar data";
			
		}  
	}

	public Funcionario(String senha, Date dataAdmissao, Date dataDemissao) {
		this.senha = senha;
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

	public Filial getFilial() {
		return filial;
	}

	public void setFilial(Filial filial) {
		this.filial = filial;
	}


}
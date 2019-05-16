package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "Cliente")
@PrimaryKeyJoinColumn(name = "codigo")
public class Cliente extends Pessoa {

	private Date dataDeCadastro;
	private String cnh;


	public Cliente() {

	}

	public Cliente(Date dataDeCadastro, String cnh) {
		this.dataDeCadastro = dataDeCadastro;
		this.cnh = cnh;
	}


	public Date getDataDeCadastro() {
		return dataDeCadastro;
	}

	public void setDataDeCadastro(Date dataDeCadastro) {
		this.dataDeCadastro = dataDeCadastro;
	}

	public String getCnh() {
		return cnh;
	}

	public void setCnh(String cnh) {
		this.cnh = cnh;
	}

	@Override
	public String toString() {
		return this.getNome() + " " + this.getSobrenome() + " - " + this.getCpf();
	}

}

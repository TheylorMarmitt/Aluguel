package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Cliente" ,uniqueConstraints = {@UniqueConstraint(columnNames={"cnh"})})
@PrimaryKeyJoinColumn(name = "codigo")
public class Cliente extends Pessoa {

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dataDeCadastro;
	@NotNull(message="A CNH é um campo obrigatório")
	@Size(min = 11, max = 11, message = "A CNH deve ser válida")
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

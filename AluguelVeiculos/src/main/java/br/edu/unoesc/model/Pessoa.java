package br.edu.unoesc.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.br.CPF;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "Pessoa" , uniqueConstraints = {@UniqueConstraint(columnNames={"cpf"})})
public abstract class Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@NotNull(message="O nome é um campo obrigatório")
	@Size(min = 3, max = 30, message = "Insira um nome válido")
	private String nome;
	
	@NotNull(message="O sobrenome é um campo obrigatório")
	@Size(min = 3, max = 30, message = "Insira um sobrenome válido")
	private String sobrenome;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dataNascimento;
	
	private String telefone;
	
	@CPF(message="Adicione um CPF válido")
	@NotNull(message="O CPF é um campo obrigatório")
	@Column(unique=true)
	private String cpf;
	
	@NotNull(message="O e-mail é um campo obrigatório")
	private String email;
	
	
	public Pessoa() {

	}
	
	public String converteData(){
		SimpleDateFormat in= new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat out = new SimpleDateFormat("dd/MM/yyyy");
		try {
			if(this.dataNascimento != null) {
				return out.format(in.parse(Optional.ofNullable(this.dataNascimento.toString()).orElse("")));
			}
			else {
				return "";
			}
				
		} catch (ParseException e) {
			return "Erro ao pegar data";
			
		}  
	}

	public Pessoa(long codigo, String nome, String sobrenome, Date dataNascimento, String telefone, String cpf,
			String email) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.dataNascimento = dataNascimento;
		this.telefone = telefone;
		this.cpf = cpf;
		this.email = email;
	}


	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pessoa other = (Pessoa) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		return true;
	}
	

}

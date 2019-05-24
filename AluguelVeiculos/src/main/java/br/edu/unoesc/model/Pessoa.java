package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.br.CPF;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "Pessoa")
public abstract class Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long codigo;
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
	@Size(min = 11, max = 11, message = "Insira um CPF válido")
	private String cpf;
	@NotNull(message="O e-mail é um campo obrigatório")
	private String email;
	
	
	public Pessoa() {

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


	/**
	 * 
	 * @return true se cpf for valido
	 */
	public Boolean validaCpf() {
		boolean cpfValido = false;
		int decimaPosicao = 10;
		int total = 0;
		char[] chars = this.getCpf().toCharArray();
		
		
		
		for (int i = 0; i < 9; i++) {
			int valorCaracterEmPosicao = Integer.valueOf(String.valueOf(chars[i]));
			total = total + (valorCaracterEmPosicao * decimaPosicao);
			decimaPosicao--;
		}

		int validacao1 = total % 11;
		validacao1 = 11 - validacao1;
		if (validacao1 > 9) {
			validacao1 = 0;
		}

		int valorCaracterEmPosicao9 = Integer.valueOf(String.valueOf(chars[9]));

		if (validacao1 == valorCaracterEmPosicao9) {
			cpfValido = true;
		}

		int decimaPrimeiraPosicao = 11;
		total = 0;
		for (int i = 0; i < 10; i++) {
			int valorCaracterEmPosicao = Integer.valueOf(String.valueOf(chars[i]));
			total = total + (valorCaracterEmPosicao * decimaPrimeiraPosicao);
			decimaPrimeiraPosicao--;
		}

		int validacao2 = total % 11;
		validacao2 = 11 - validacao2;

		if (validacao2 > 9) {
			validacao2 = 0;
		}

		int valorCaracterEmPosicao10 = Integer.valueOf(String.valueOf(chars[10]));

		if (validacao2 == valorCaracterEmPosicao10) {
			cpfValido = true;
		}

		if (!cpfValido) {
			return false;
		} else {
			return true;
		}

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

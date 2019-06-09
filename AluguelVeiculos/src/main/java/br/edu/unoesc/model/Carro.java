package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Carro" , uniqueConstraints = {@UniqueConstraint(columnNames={"placa"})})
public class Carro {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@NotNull(message="A marca não pode ser nula!")
	@Size(min = 3, max = 45, message = "A marca precisa ter no mínimo 3 e no máximo 45 caracteres")
	private String marca;
	
	@NotNull(message="O modelo não pode ser nulo!")
	@Size(min = 3, max = 45,  message = "O modelo precisa ter no mínimo 3 e no máximo 45 caracteres")
	private String modelo;
	
	@NotNull(message="Favor informar o valor para calculos futuros")
	private Double valor;
	
	private String cor;
	
	private Integer ano;
	
	@NotNull(message="A placa é um campo obrigatório")
	@Size(min = 7, max = 8,  message = "A placa precisa ser válida")
	@Column(unique=true)
	private String placa;
	
	private boolean disponivel;
	@Lob
    private String imagem;
	
	private Date dataDeAquisicao;
	
	private Date dataDeDesapropriacao;
	
	private int qtdAlugado;

	public String getimagem() {
		return imagem;
	}

	public void setimagem(String imagem) {
		this.imagem = imagem;
	}

	public Carro() {

	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public boolean isDisponivel() {
		return disponivel;
	}

	public void setDisponivel(boolean disponivel) {
		if(disponivel) {
			qtdAlugado++;
		}
		this.disponivel = disponivel;
	}

	public Carro(Long codigo, String marca, String modelo, Double valor, String cor, Integer ano, String placa,
			boolean disponivel) {
		super();
		this.codigo = codigo;
		this.marca = marca;
		this.modelo = modelo;
		this.valor = valor;
		this.cor = cor;
		this.ano = ano;
		this.placa = placa;
		this.disponivel = disponivel;
	}

	@Override
	public String toString() {
		return this.marca + " [" + this.modelo + "] - " + this.placa ;
	}

	public Date getDataDeAquisicao() {
		return dataDeAquisicao;
	}

	public void setDataDeAquisicao(Date dataDeAquisicao) {
		this.dataDeAquisicao = dataDeAquisicao;
	}

	public Date getDataDeDesapropriacao() {
		return dataDeDesapropriacao;
	}

	public void setDataDeDesapropriacao(Date dataDeDesapropriacao) {
		this.dataDeDesapropriacao = dataDeDesapropriacao;
	}

	public int getQtdAlugado() {
		return qtdAlugado;
	}



}

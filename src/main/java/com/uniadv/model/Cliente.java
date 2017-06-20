package com.uniadv.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name = "clientes")
public class Cliente {

	public Cliente() {

	}

	public Cliente(Integer id) {
		this.id = id;
	}

	public Cliente(Integer id, String nome) {
		this.id = id;
		this.nome = nome;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotNull
	@Size(min = 2, max = 50, message = "O tamanho deve ser entre {min} e {max}")
	private String nome;

	@NotNull
	@Size(min = 11, max = 11, message = "Campo deve ter {min} números")
	private String cpf;

	@NotNull
	private Date data;

	@NotNull
	private String estadoCivil;

	@NotNull
	private String numeroRg;

	@NotNull
	private String profissao;

	@NotNull
	private String naturalidade;

	@NotNull
	private String nacionalidade;

	@NotNull
	private Date dataExpedicaoRg;

	@NotNull
	private String orgaoExpedicaoRg;

	@NotNull
	@Size(max = 2, message = "Campo deve ter {max} caracteres")
	private String estadoExpedicaoRg;

	@NotNull
	private String numeroCtps;

	@NotNull
	private String serieCtps;
	
	@NotNull
	@Size(max = 2, message = "Campo deve ter {max} caracteres")
	private String estadoExpedicaoCtps;
	
	@NotNull
	private String rua;
	
	@NotNull
	private String numero;
	
	@NotNull
	private String bairro;
	
	@NotNull
	private String complemento;
	
	@NotNull
	private String email;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", nome=" + nome + "";
	}

}

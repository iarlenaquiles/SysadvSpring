package com.sysadv.model;

import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.bson.types.ObjectId;
import org.hibernate.validator.constraints.NotEmpty;

public class Contato {

	private ObjectId idMongo;

	@NotNull
	@Size(min = 2, max = 50, message = "O tamanho deve ser entre {min} e {max}")
	private String nome;

	@NotNull
	@NotEmpty
	private List<String> telefone;

	@NotNull
	@NotEmpty
	private String email;

	@NotNull
	@NotEmpty
	private String mensagem;

	@NotNull
	private ObjectId idDepartamento;

	private String nomeDept;

	public String getNomeDept() {
		return nomeDept;
	}

	public void setNomeDept(String nomeDept) {
		this.nomeDept = nomeDept;
	}

	public ObjectId getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(ObjectId idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public Contato() {
	}

	public Contato(ObjectId idMongo, String nome, List<String> telefone, String email, String mensagem,
			ObjectId idDepartamento, String nomeDept) {
		this.idMongo = idMongo;
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
		this.mensagem = mensagem;
		this.idDepartamento = idDepartamento;
		this.nomeDept = nomeDept;
	}

	public ObjectId getIdMongo() {
		return idMongo;
	}

	public void setIdMongo(ObjectId idMongo) {
		this.idMongo = idMongo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<String> getTelefone() {
		return telefone;
	}

	public void setTelefone(List<String> telefone) {
		this.telefone = telefone;
	}

	public void addTelefone(String tel) {
		this.telefone.add(tel);
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

}

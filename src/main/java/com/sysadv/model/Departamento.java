package com.sysadv.model;

import java.io.Serializable;

import org.bson.types.ObjectId;

public class Departamento implements Serializable {

	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Departamento [idMongo=" + idMongo + ", nome=" + nome + "]";
	}

	private ObjectId idMongo;

	private String nome;

	public Departamento() {

	}

	public Departamento(ObjectId idMongo, String nome) {
		this.idMongo = idMongo;
		this.nome = nome;
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

}

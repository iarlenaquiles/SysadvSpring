package com.sysadv.model;

import org.bson.types.ObjectId;

public class Departamento {

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

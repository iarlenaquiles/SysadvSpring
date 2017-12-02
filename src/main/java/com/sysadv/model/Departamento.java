package com.sysadv.model;

import org.bson.types.ObjectId;

public class Departamento {

	private ObjectId idMongo;
	private Double id;
	private String nome;

	public Departamento() {

	}

	public Departamento(ObjectId idMongo, Double id, String nome) {
		super();
		this.idMongo = idMongo;
		this.id = id;
		this.nome = nome;
	}

	public ObjectId getIdMongo() {
		return idMongo;
	}

	public void setIdMongo(ObjectId idMongo) {
		this.idMongo = idMongo;
	}

	public Double getId() {
		return id;
	}

	public void setId(Double id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}

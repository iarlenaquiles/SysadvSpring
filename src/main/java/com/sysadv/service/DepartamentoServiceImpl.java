package com.sysadv.service;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Service;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.sysadv.model.Departamento;

@Service
public class DepartamentoServiceImpl implements DepartamentoService {

	MongoClient mongoClient = new MongoClient();
	MongoDatabase db = mongoClient.getDatabase("sysadv_contato");
	MongoCollection<Document> collectionDepartamento = db.getCollection("departamento");

	@Override
	public void save(Departamento departamento) {
		Document doc = new Document();
		doc.append("nome", departamento.getNome());

		collectionDepartamento.insertOne(doc);
	}

	@Override
	public List<Departamento> getLista() {
		List<Departamento> departamentos = new ArrayList<Departamento>();

		for (Document doc : collectionDepartamento.find()) {
			Departamento departamento = new Departamento();
			departamento.setIdMongo(doc.getObjectId("_id"));
			departamento.setNome(doc.getString("nome"));

			departamentos.add(departamento);
		}
		return departamentos;
	}

	@Override
	public void remove(String id) {
		collectionDepartamento.deleteOne(new Document("_id", new ObjectId(id)));
	}

	@Override
	public Long count() {
		return collectionDepartamento.count();
	}

	@Override
	public Departamento findOne(String id) {
		Document filter = Document.parse("{_id:ObjectId('" + id + "')}");
		Departamento dept = new Departamento();

		for (Document doc : collectionDepartamento.find(filter)) {
			dept.setIdMongo(doc.getObjectId("_id"));
			dept.setNome(doc.getString("nome"));
		}
		return dept;
	}

	@Override
	public void update(Departamento departamento) {
		// System.out.println(this.findOne(departamento.getIdMongo().toString()).getIdMongo());
		Object id = this.findOne(departamento.getIdMongo().toString()).getIdMongo();

		Document updateQuery = new Document("_id", id);
		collectionDepartamento.updateOne(updateQuery,
				new Document("$set", new Document("nome", departamento.getNome())));

	}

}

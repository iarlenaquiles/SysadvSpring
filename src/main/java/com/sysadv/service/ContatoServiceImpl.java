package com.sysadv.service;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Service;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.sysadv.model.Contato;
import com.sysadv.model.Departamento;

@Service
public class ContatoServiceImpl implements ContatoService {

	MongoClient mongoClient = new MongoClient();
	MongoDatabase db = mongoClient.getDatabase("sysadv_contato");
	MongoCollection<Document> collectionContato = db.getCollection("contato");
	MongoCollection<Document> collectionDepartamento = db.getCollection("departamento");

	@Override
	public void save(Contato contato) {
		Document doc = new Document();
		doc.append("nome", contato.getNome());
		doc.append("email", contato.getEmail());
		doc.append("telefones", contato.getTelefone());
		doc.append("mensagem", contato.getMensagem());
		doc.append("id_departamento", contato.getIdDepartamento());

		collectionContato.insertOne(doc);
	}

	@Override
	public List<Contato> getLista() {
		List<Contato> contatos = new ArrayList<Contato>();
		List<String> telefones = new ArrayList<String>();
		for (Document doc : collectionContato.find()) {
			Contato contato = new Contato();
			contato.setNome(doc.getString("nome"));
			contato.setEmail(doc.getString("email"));
			contato.setMensagem(doc.getString("mensagem"));
			contato.setIdMongo(doc.getObjectId("_id"));
			telefones = (List<String>) doc.get("telefones");
			contato.setTelefone(telefones);
			contato.setNomeDept(this.getNodeDepartamento(doc.getObjectId("id_departamento").toString()));

			contatos.add(contato);
		}
		return contatos;
	}

	@Override
	public void remove(String id) {
		collectionContato.deleteOne(new Document("_id", new ObjectId(id)));
	}

	@Override
	public Long count() {
		return collectionContato.count();
	}

	@Override
	public String getNodeDepartamento(String id) {
		Document filter = Document.parse("{_id:ObjectId('" + id + "')}");
		Departamento dept = new Departamento();
		for (Document doc : collectionDepartamento.find(filter)) {
			dept.setIdMongo(doc.getObjectId("_id"));
			dept.setNome(doc.getString("nome"));

		}
		return dept.getNome();
	}

}

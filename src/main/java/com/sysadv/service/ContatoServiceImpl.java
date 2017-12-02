package com.sysadv.service;

import java.util.List;

import org.bson.Document;
import org.springframework.stereotype.Service;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.sysadv.model.Contato;

@Service
public class ContatoServiceImpl implements ContatoService {

	MongoClient mongoClient = new MongoClient();
	MongoDatabase db = mongoClient.getDatabase("sysadv_contato");
	MongoCollection<Document> collectionContato = db.getCollection("contato");

	@Override
	public void save(Contato contato) {
		Document doc = new Document();
		doc.append("nome", contato.getNome());
		doc.append("email", contato.getEmail());
		doc.append("telefones", contato.getTelefone());
		doc.append("mensagem", contato.getMensagem());

		collectionContato.insertOne(doc);
	}

	@Override
	public List<Contato> getLista() {
		// TODO Auto-generated method stub
		return null;
	}

}

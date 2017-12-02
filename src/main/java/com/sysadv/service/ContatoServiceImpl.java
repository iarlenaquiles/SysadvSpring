package com.sysadv.service;

import java.util.ArrayList;
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
			contatos.add(contato);
		}
		return contatos;
	}

}

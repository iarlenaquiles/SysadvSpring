package com.sysadv.connection;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class ConnectionMongo {

	private MongoClient mongoClient = null;
	private MongoCollection<Document> collection;
	
	public ConnectionMongo(MongoCollection<Document> collection) {
		mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase("sysadv_contato");
		this.collection = db.getCollection(collection.toString());
	}
	
}

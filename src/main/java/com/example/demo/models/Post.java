package com.example.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "posts")
public class Post {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column
	int Id;
	@Column
	String username;
	@Column
	String email;
	@Column
	String uf;
	@Column
	String cidade;
	
	public Post() {
		super();
	}

	public Post(int id, String username, String email, String uf, String cidade) {
		super();
		Id = id;
		this.username = username;
		this.email = email;
		this.uf = uf;
		this.cidade = cidade;
	}

	public int getId() {
		return Id;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getUf() {
		return uf;
	}

	public String getCidade() {
		return cidade;
	}

	public void setId(int id) {
		Id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	
	
}

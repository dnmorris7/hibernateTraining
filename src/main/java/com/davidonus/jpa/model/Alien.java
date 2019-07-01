package com.davidonus.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;



@Entity
public class Alien {
	@Id
	private int id;
	private String name;

	
	
	public Alien() {
		this.id = 00;
		this.name = "Hello Worlder";
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}

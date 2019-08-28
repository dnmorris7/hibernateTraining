package com.davidonus.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;



@Entity
public class Alien {
	@Id
	private int aid;
	private String name;
	private String tech;
	
	
	public Alien() {
		this.aid = 00;
		this.name = "Hello Worlder";
		this.tech="Java";
	}
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTech() {
		return tech;
	}

	public void setTech(String tech) {
		this.tech = tech;
	}

	@Override
	public String toString() {
		return "Alien [aid=" + aid + ", name=" + name + ", tech=" + tech + "]";
	}
	
	
}

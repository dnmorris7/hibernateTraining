package com.davidonus.jpa.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.davidonus.jpa.model.Alien;

public interface AlienRepo extends CrudRepository<Alien, Integer>{
	List<Alien> findByTech(String tech);
}

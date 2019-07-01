package com.davidonus.jpa.dao;

import org.springframework.data.repository.CrudRepository;

import com.davidonus.jpa.model.Alien;

public interface AlienRepo extends CrudRepository<Alien, Integer>{

}

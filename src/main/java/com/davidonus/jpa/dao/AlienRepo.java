package com.davidonus.jpa.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.davidonus.jpa.model.Alien;

public interface AlienRepo extends JpaRepository<Alien, Integer>{
	List<Alien> findByTech(String tech);
}

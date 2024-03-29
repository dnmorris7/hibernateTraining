package com.davidonus.jpa.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.davidonus.jpa.dao.AlienRepo;
import com.davidonus.jpa.model.Alien;

@RestController
public class AlienController {

	@Autowired
	AlienRepo repo;

	@RequestMapping("/")
	public String home() {

		System.out.println("Page Accessed. Hello ");
		return "home.jsp";
	}

	@RequestMapping("home")
	public ModelAndView home(Alien alien) {

		System.out.println("Page Accessed. Hello " + alien.getName());

		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", alien);
		mv.setViewName("home");
		return mv;
	}


	@PostMapping("/aliens")
	public Alien addAlien(@RequestBody Alien alien) {
		System.out.println("Alien Submitted");
		repo.save(alien);
		return alien;
	}

	@RequestMapping("/showAlien")
	public ModelAndView showAlien(@RequestParam int aid) {
		ModelAndView mv = new ModelAndView("showAlien.jsp");
	try {	
		Alien alien = repo.findById(aid).orElse(new Alien());
		mv.addObject(alien);
		System.out.println("Alien Retrieved");
		}
	catch(Exception e){
		System.err.println("Alien ID not working");
		}
	finally {
		return mv;
	}}

	//return a webpage
	//@RequestMapping("/getAlien")
	public ModelAndView getAlienMV(@RequestParam int aid) {
		ModelAndView mv = new ModelAndView("showAlien.jsp");
		Alien alien = repo.findById(aid).orElse(null);
		System.out.println("Fetching Alien");
		System.out.println(repo.findByTech("Java"));
		return mv;
	}
	
	
	//return raw data
	@GetMapping(path="/aliens")
	@ResponseBody //<--so it doesn't go looking for a jsp
	public List<Alien> getAliens() {
	
		return repo.findAll();
	}
	
	@RequestMapping("/aliens/{aid}")
	@ResponseBody //for returning raw data
	public Optional<Alien> getAlien(@PathVariable("aid") int aid) {
		
		return repo.findById(aid);
	}

}

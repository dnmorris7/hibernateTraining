package com.davidonus.jpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.davidonus.jpa.dao.AlienRepo;
import com.davidonus.jpa.model.Alien;

@Controller
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

	@RequestMapping("/addAlien")
	public String addAlien(Alien alien) {
		System.out.println("Alien Submitted");
		repo.save(alien);
		return "home.jsp";
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
	@RequestMapping("/aliens/")
	@ResponseBody //<--so it doesn't go looking for a jsp
	public String getAliens() {
	
		return repo.findAll().toString();
	}
	
	@RequestMapping("/aliens/{aid}")
	@ResponseBody //for returning raw data
	public String getAlien(@PathVariable("aid") int aid) {
		
		return repo.findById(aid).toString();
	}

}

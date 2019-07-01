package com.davidonus.jpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

}

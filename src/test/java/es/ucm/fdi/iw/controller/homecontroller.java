package es.ucm.fdi.iw.controller;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class homecontroller{

	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "eMenu-Home");	
		model.addAttribute("prefix", "../");
		
		return "home";
	}
};

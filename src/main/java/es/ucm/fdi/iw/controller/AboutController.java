package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class AboutController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "about");	
		
		
		return "about";
	}

}

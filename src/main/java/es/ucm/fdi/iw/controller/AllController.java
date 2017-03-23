package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class AllController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String all(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "All");	
		model.addAttribute("prefix", "../");
		
		return "all";
	}

}

package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class IndexController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "eMenu");	
		model.addAttribute("prefix", "../");
		
		return "index";
	}
}

package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class adminController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Admin");	
		model.addAttribute("prefix", "../");
		
		return "admin";
	}

}

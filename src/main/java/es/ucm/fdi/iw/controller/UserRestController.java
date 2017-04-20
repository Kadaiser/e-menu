package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class UserRestController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/user-restaurant", method = RequestMethod.GET)
	public String userRest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "User");	
		
		return "userRest";
	}


}

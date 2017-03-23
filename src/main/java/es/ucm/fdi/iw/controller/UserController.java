package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class UserController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "User");	
		model.addAttribute("prefix", "../");
		
		return "user";
	}
}

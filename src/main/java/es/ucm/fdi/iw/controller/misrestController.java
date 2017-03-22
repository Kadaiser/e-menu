package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class misrestController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/mis-rest", method = RequestMethod.GET)
	public String misrest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Mis Restaurantes");	
		model.addAttribute("prefix", "../");
		
		return "misrest";
	}

}

package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class regrestController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/reg-rest", method = RequestMethod.GET)
	public String regrest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Registro");	
		model.addAttribute("prefix", "../");
		
		return "regrest";
	}

}

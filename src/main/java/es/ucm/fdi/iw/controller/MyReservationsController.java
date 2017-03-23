package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class MyReservationsController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/mis-reserv", method = RequestMethod.GET)
	public String reservas(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Mis Reservas");	
		model.addAttribute("prefix", "../");
		
		return "reservas";
	}

}

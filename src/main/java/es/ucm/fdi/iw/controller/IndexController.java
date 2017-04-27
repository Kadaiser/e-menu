package es.ucm.fdi.iw.controller;

import java.util.Date;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.ucm.fdi.iw.model.User;

public class IndexController {
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "eMenu");	

		
		return "index";
	}
	
	
}

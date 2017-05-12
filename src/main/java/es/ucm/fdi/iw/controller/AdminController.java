package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import es.ucm.fdi.iw.model.Admin;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@PersistenceContext
	private EntityManager entityManager;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String admin(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Admin");	
		
		return "admin";
	}

	@Transactional
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model model, HttpSession session){
		
		Admin a = new Admin();
		a.setName("Paco");
		a.setPass(passwordEncoder.encode("arr"));
		entityManager.persist(a);
		return "admin";
	}	
}

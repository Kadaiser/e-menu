package es.ucm.fdi.iw.controller;

import java.util.UUID;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller	
public class RootController {

	
	  @ModelAttribute
	  public void addAttributes(Model m){
	  	m.addAttribute("prefix","static");
	 }
	 
	@RequestMapping({"/","/index"})
	String root() {
		return "index";
	}
	@RequestMapping({"/home"})
	String homeView() {
		return "home";
	}
	
	
	
	@RequestMapping({"/about"})
	String aboutView() {
		return "about";
	}
	
	@RequestMapping({"/add"})
	String addView() {
		return "add";
	}
	
	@RequestMapping({"/admin"})
	String adminView() {
		return "admin";
	}
	
	@RequestMapping({"/all"})
	String allView() {
		return "all";
	}
	
	@RequestMapping({"/blank"})
	String blankView() {
		return "blank";
	}
	
	@RequestMapping({"/contact"})
	String contactView() {
		return "contact";
	}
	
	@RequestMapping({"/reg-rest"})
	String regRestView() {
		return "reg-rest";
	}
	
	@RequestMapping({"/reg"})
	String regView() {
		return "reg";
	}
	
	@RequestMapping({"/tours"})
	String toursView() {
		return "tours";
	}
	
	@RequestMapping({"/ui"})
	String uiView() {
		return "ui";
	}
	
	@RequestMapping({"/user"})
	String userView() {
		return "user";
	}
	
	@RequestMapping({"/carta-restaurante"})
	String cartaView() {
		return "carta-restaurante";
	}
	@RequestMapping({"/mis-reserv"})
	String reservView() {
		return "mis-reserv";
	}
	@RequestMapping({"/mis-rest"})
	String restView() {
		return "mis-rest";
	}
	
	@RequestMapping({"/reservas-restaurante"})
	String reservasResView() {
		return "reservas-restaurante";
	}
	@RequestMapping({"/restaurante"})
	String restauranteView() {
		return "restaurante";
	}
	@RequestMapping({"/user-restaurant"})
	String userRestView() {
		return "user-restaurant";
	}
	
	/*@GetMapping
	String login() {return "login"; }
			
	@GetMapping("/login/{role}")
	String login(@PathVariable String role, HttpSession s){
		s.setAttribute("role", role);
		return "redirect:login";
	}
	
	@GetMapping ("/logout")
		String login (HttpSession s){
		s.invalidate();
		return "login";
	}*/
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(
			@RequestParam("user") String formLogin,
			@RequestParam("pwd") String formPass,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {

			String formSource = "index";		
			
			try {
				if(formLogin.equals("user@iw.com") && formPass.equals("iw2017")){
					getTokenForSession(session);
					session.setAttribute("rol", "user");
					formSource="redirect:/home";
					
				}else if(formLogin.equals("admin@iw.com") && formPass.equals("iw2017")){
					getTokenForSession(session);
					session.setAttribute("rol", "admin");
					formSource="redirect:/admin";
					
				}else if(formLogin.equals("rest@iw.com") && formPass.equals("iw2017")){
					getTokenForSession(session);
					session.setAttribute("rol", "rest");
					formSource="redirect:/user-restaurant";
					
				}
				
			} catch (NoResultException nre) {
				
				model.addAttribute("errorLogin", "No estás registrado");
			}
		

		// redirects to view from which login was requested
		return formSource;
	}
	/**
	 * Logout (also returns to home view).
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
	
	
	static boolean isTokenValid(HttpSession session, String token) {
	    Object t=session.getAttribute("csrf_token");
	    return (t != null) && t.equals(token);
	}
	
	/**
	 * Returns an anti-csrf token for a session, and stores it in the session
	 * @param session
	 * @return
	 */
	static String getTokenForSession (HttpSession session) {
	    String token=UUID.randomUUID().toString();
	    session.setAttribute("csrf_token", token);
	    return token;
	}
}

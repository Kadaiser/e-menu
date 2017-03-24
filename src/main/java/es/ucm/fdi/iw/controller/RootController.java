package es.ucm.fdi.iw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


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
	
}

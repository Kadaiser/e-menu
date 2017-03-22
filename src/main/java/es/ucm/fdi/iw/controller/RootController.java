package es.ucm.fdi.iw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller	
public class RootController {

	@GetMapping({"/", "/home"})
	String root() {
		return "home";
	}
	
	@GetMapping({"/about"})
	String aboutView() {
		return "about";
	}
	
	@GetMapping({"/add"})
	String addView() {
		return "add";
	}
	
	@GetMapping({"/admin"})
	String adminView() {
		return "admin";
	}
	
	@GetMapping({"/all"})
	String allView() {
		return "all";
	}
	
	@GetMapping({"/blank"})
	String blankView() {
		return "blank";
	}
	
	@GetMapping({"/contact"})
	String contactView() {
		return "contact";
	}
	
	@GetMapping({"/index"})
	String indexView() {
		return "index";
	}
	
	@GetMapping({"/reg-rest"})
	String regRestView() {
		return "reg-rest";
	}
	
	@GetMapping({"/tours"})
	String toursView() {
		return "tours";
	}
	
	@GetMapping({"/ui"})
	String uiView() {
		return "ui";
	}
	
}

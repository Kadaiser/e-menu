package es.ucm.fdi.iw.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.UUID;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import es.ucm.fdi.iw.LocalData;
import es.ucm.fdi.iw.model.Admin;
import es.ucm.fdi.iw.model.Restaurant;
import es.ucm.fdi.iw.model.User;


@Controller	
public class RootController {
	
	@Autowired
	private EntityManager entityManager;

	
	  @ModelAttribute
	  public void addAttributes(Model m){
	  	m.addAttribute("prefix","static");
	 }
	 
	/*@RequestMapping({"/","/index"})
	String root() {
		return "index";
	}
		@RequestMapping(value= "/home")
	String homeView(HttpSession s) {
		
		if(s!=null && (isAdmin(s) || isRest(s) || isUser(s))){
			return "home";
	}else{ 
			return "redirect:index";
		}
	}
	
	
	
	@RequestMapping({"/about"})
	String aboutView() {
		return "about";
	}
	
	@RequestMapping({"/add"})
	String addView(HttpSession s) {
		
		if(isAdmin(s)){
			return "add";
		}else{
			return "home";
		}
	}
	
	@RequestMapping({"/admin"})
	String adminView(HttpSession s) {
		
		if(isAdmin(s)){
			return "admin";
		}else{
			return "home";
		}
	}
	
	@RequestMapping({"/all"})
	String allView(HttpSession s) {
		if(!isAdmin(s)){
			return "home";
		}else{
			return "all";
		}
		
	}
		
	@RequestMapping({"/contact"})
	String contactView(HttpSession s) {
		if(s!=null && (isAdmin(s) || isRest(s) || isUser(s))){
			return "contact";
		}else{ 
			
		return "index";
		}
	}
	
	/*@RequestMapping({"/reg-rest"})
	String regRestView(HttpSession s) {
		if(!isAdmin(s)){
			return "home";
		}else{
			
		return "reg-rest";
	}
	}*/
	
	/*@RequestMapping({"/reg"})
	String regView() {
		return "reg";
	}
	
	
	@RequestMapping({"/user"})
	String userView(HttpSession s) {
		if(s!=null && (isAdmin(s) || isRest(s) || isUser(s))){
			
			return "user";
			
		}else{
		return "index";
		}
	}
	
	@RequestMapping({"/carta-restaurante"})
	String cartaView(HttpSession s) {
		if(!isRest(s)){
			return "home";
		}else{
		return "carta-restaurante";
		}
	}
	@RequestMapping({"/mis-reserv"})
	String reservView(HttpSession s) {
		if(!isUser(s)){
			return "home";
		}else{
		return "mis-reserv";
		}
	}
	@RequestMapping({"/mis-rest"})
	String restView(HttpSession s) {
		if(!isUser(s)){
			return "home";
		}else{
		return "mis-rest";
		}
	}
	
	@RequestMapping({"/reservas-restaurante"})
	String reservasResView(HttpSession s) {
		if(!isRest(s)){
			return "home";
		}else{
		return "reservas-restaurante";
		}
	}
	@RequestMapping({"/restaurante"})
	String restauranteView(HttpSession s) {
		if(s!=null && (isAdmin(s) || isRest(s) || isUser(s))){
			return "restaurante";
		}else{
		return "index";
		}
	}
	@RequestMapping({"/user-restaurant"})
	String userRestView() {
		return "user-restaurant";
	}*/
	
	private static Logger log = Logger.getLogger(RootController.class.getName());
	  
	@GetMapping("/test")
	@Transactional
	public String test() {
		
		User u = new User();
		u.setAge(18);
		u.setMail("a@a.as");
		u.setPass("a");
		u.setName("a");
		entityManager.persist(u);
		
		Restaurant r = new Restaurant();
		r.setMail("r@r.rs");
		r.setPass("r");
		r.setName("r");
		entityManager.persist(r);
		
		log.info("deberia haber hecho 2 inserts...");
		
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
					session.setAttribute("roles", "USER");
					formSource="redirect:/home";
					
				}else if(formLogin.equals("admin@iw.com") && formPass.equals("iw2017")){
					getTokenForSession(session);
					session.setAttribute("roles", "ADMIN");
					formSource="redirect:/admin";
					
				}else if(formLogin.equals("rest@iw.com") && formPass.equals("iw2017")){
					getTokenForSession(session);
					session.setAttribute("roles", "REST");
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
	static boolean isAdmin(HttpSession session) {
		if (session != null){
		return session.getAttribute("rol").equals("admin");
		}
		return false;
		}
	static boolean isRest(HttpSession session) {
		if (session != null){
			return session.getAttribute("rol").equals("rest");
		}else{
			return false;
		}
	}
	static boolean isUser(HttpSession session) {
		if(session != null){
			return session.getAttribute("rol").equals("user");
		}else{
			return false;
		}
		
	}
	
/* About*/
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "about");	
		
		
		return "about";
	}
/*Add*/
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Add");	
		
		return "add";
	}
/*Admin*/
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Admin");	
		
		return "admin";
	}
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Transactional
	@RequestMapping(value = "/admin/add", method = RequestMethod.GET)
	public String addAdmin(Model model, HttpSession session){
		
		Admin a = new Admin();
		a.setName("Paco");
		a.setPass(passwordEncoder.encode("arr"));
		entityManager.persist(a);
		return "admin";
	}	
	
/*All*/
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String all(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "All");	

		
		return "all";
	}
/*Home*/
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "eMenu-Home");	

		
		return "home";
	}
/*Contact*/
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Contact");	
		
		return "contact";
	}
/*Index*/
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "eMenu");	

		
		return "index";
	}
/*MenuRestaurant*/
	@RequestMapping(value = "/carta-restaurante", method = RequestMethod.GET)
	public String carta(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Carta");	
		
		return "carta";
	}
/*Reservations*/
	@RequestMapping(value = "/mis-reserv", method = RequestMethod.GET)
	public String reservas(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Mis Reservas");	
		
		return "reservas";
	}
/*Restaurant*/
	@RequestMapping(value = "/restaurant", method = RequestMethod.GET)
	public String restaurante(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Restaurant");	
		
		return "restaurant";
	}
	
	@Transactional
	@RequestMapping(value = "/restaurant/add", method = RequestMethod.GET)
	public String addRestaurant(Model model, HttpSession session){
		
		Restaurant a = new Restaurant();
		a.setName("Paco");
		a.setPass(passwordEncoder.encode("arr"));
		entityManager.persist(a);
		return "restaurant";
	}
/*RestaurantRegister*/
	@RequestMapping(value = "/reg-rest", method = RequestMethod.GET)
	public String regrest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Registro");	
		
		return "reg-rest";
	}
/*RestaurantReservations*/
	@RequestMapping(value = "/reservas-restaurante", method = RequestMethod.GET)
	public String reservRes(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Reservas");	
		
		return "reservRes";
	}
/*Restaurants*/
	@RequestMapping(value = "/mis-rest", method = RequestMethod.GET)
	public String misrest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Mis Restaurantes");	
		
		return "misrest";
	}
/*User*/
	private LocalData localData;
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "User");	
		
		return "user";
	}
	
	/**
	 * Uploads a photo for a user
	 * @param id of user 
	 * @param photo to upload
	 * @return
	 */
	@RequestMapping(value="/photo/{id}", method=RequestMethod.POST)
    public @ResponseBody String handleFileUpload(@RequestParam("photo") MultipartFile photo,
    		@PathVariable("id") String id){
        if (!photo.isEmpty()) {
            try {
                byte[] bytes = photo.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(
                        		new FileOutputStream(localData.getFile("user", id)));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded " + id + 
                		" into " + localData.getFile("user", id).getAbsolutePath() + "!";
            } catch (Exception e) {
                return "You failed to upload " + id + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload a photo for " + id + " because the file was empty.";
        }
	}
	
	@Transactional
	@RequestMapping(value = "/user/add", method = RequestMethod.GET)
	public String addUser(Model model, HttpSession session){
		
		User u = new User();
		u.setName("Paco");
		u.setPass(passwordEncoder.encode("arr"));
		entityManager.persist(u);
		return "user";
	}
/*UserRegister*/
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	@Transactional
	public String reg(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Registro");	
		
		return "reg";
	}
/*UserRest*/
	@RequestMapping(value = "/user-restaurant", method = RequestMethod.GET)
	public String userRest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "User");	
		
		return "userRest";
	}

}

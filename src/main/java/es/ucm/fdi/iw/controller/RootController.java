package es.ucm.fdi.iw.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.Date;
import java.util.List;
import java.util.UUID;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import es.ucm.fdi.iw.model.Allergen;
import es.ucm.fdi.iw.model.Dish;
import es.ucm.fdi.iw.model.Profile;
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

	private static Logger log = Logger.getLogger(RootController.class.getName());
	  
	private Allergen getAllergen(long id, Dish d) {
		Allergen a = entityManager.find(Allergen.class, id);
		a.getDishes().add(d);
		entityManager.persist(d);
		return a;
	}
	
	@RequestMapping(value="/test", method = RequestMethod.GET)
	@Transactional
	public String test() {
		
		User u = new User();
		u.setAge(18);
		u.setMail("adri@a.as");
		u.setPass("aa");
		u.setName("aa");
		entityManager.persist(u);
		/*
		Restaurant r = new Restaurant();
		r.setMail("r@r.rs");
		r.setPass("r");
		r.setName("r");
		entityManager.persist(r);
		
		Dish d = new Dish();
		d.setCarbs(10);
		d.setFats(5);
		d.setProt(18);
		d.setKcal(1);
		d.setName("Pato laqueado");
		entityManager.persist(d);
		getAllergen(1, d);
		getAllergen(8, d);
		getAllergen(4, d);*/
		
		log.info("deberia haber hecho 3 inserts...");
		return "reg";
	}
	/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(
			@RequestParam("user") String formLogin,
			@RequestParam("pwd") String formPass,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {

			String formSource = "index";		
			//public string ejemplo(HttpSession s, Model m){
			 * User u (User)s.getAttribute("user");
			 * u= entityManager.find(User.class, ugetId());
			 * m.addAttribute("perros", u.getPerros());
			 * }
			 * 
			
			Profile p = null;
			try {
				p=(Profile)entityManager.createNamedQuery("userByLogin").setParameter("loginParam", formLogin).getSingleResult();
				//comprobar que la contr es valida. min 4 y no vacia
				if(formLogin.equals("a@a.as") && formPass.equals("a")){
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
	/*static boolean isAdmin(HttpSession session) {
		if (session != null){
		return session.getAttribute("rol").equals("ADMIN");
		}
		return false;
		}
	static boolean isRest(HttpSession session) {
		if (session != null){
			return session.getAttribute("rol").equals("RESTAURANT");
		}else{
			return false;
		}
	}
	static boolean isUser(HttpSession session) {
		if(session != null){
			return session.getAttribute("rol").equals("USER");
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
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String all(Model model, HttpSession session){
		model.addAttribute("pageTitle", "All");	
		return "all";
	}

	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String home(Model model, HttpSession session){
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		session.setAttribute("usuario", 
				entityManager.createNamedQuery("userByMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());
		model.addAttribute("restaurantes", 
				entityManager.createNamedQuery("todosRestaurantes").getResultList());
		model.addAttribute("pageTitle", "eMenu-Home");		
		return "home";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	@Transactional
	public String reg(Model model, HttpSession session){
		model.addAttribute("pageTitle", "Registro");	
		return "reg";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model, HttpSession session){
		model.addAttribute("pageTitle", "Contact");	
		return "contact";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	@Transactional
	public String index(Model model, HttpSession session){
		model.addAttribute("pageTitle", "eMenu");	
		return "index";
	}

	@RequestMapping(value = "/carta-restaurante", method = RequestMethod.GET)
	public String carta(Model model, HttpSession session){
		model.addAttribute("pageTitle", "Carta");	
		return "carta-restaurante";
	}

	@RequestMapping(value = "/mis-reserv", method = RequestMethod.GET)
	public String reservas(Model model, HttpSession session){
		model.addAttribute("pageTitle", "Mis Reservas");	
		return "mis-reserv";
	}

	@RequestMapping(value = "/restaurante", method = RequestMethod.GET)
	public String restaurante(
			@RequestParam("id") long idRes,
			Model model, HttpSession session){
		model.addAttribute("restaurante", 
				entityManager.createNamedQuery("restaurantePorID").setParameter("idParam", idRes).getSingleResult());
		model.addAttribute("pageTitle", "Restaurante");	
		return "restaurante";
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
		
		return "reservas-restaurante";
	}
/*Restaurants*/
	@RequestMapping(value = "/mis-rest", method = RequestMethod.GET)
	public String misrest(Model model, HttpSession session){
		
		
		model.addAttribute("pageTitle", "Mis Restaurantes");	
		
		return "mis-rest";
	}

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
	
	@RequestMapping(value = "/user-restaurant", method = RequestMethod.GET)
	public String userRest(Model model, HttpSession session){
		model.addAttribute("pageTitle", "User");	
		return "user-restaurant";
	}
	
	//Usado junto con AJAX, notifica si el correo del Admin esta en uso
		@ResponseBody
		@Transactional
		@RequestMapping(value = "/comprobarCorreoUser", method = RequestMethod.GET)
		public ResponseEntity<String> comprobarCorreoUser(
				@RequestParam("correo") String correoUser) {
			
			StringBuilder sb = new StringBuilder("");
			
			//Comprobamos si el correo esta en la BBDD
			try {
				@SuppressWarnings("unused")
				Profile h = (Profile)entityManager.createNamedQuery("userByMail")
					.setParameter("emailParam", correoUser).getSingleResult();
				
			//	String mensajeError = "El correo del user está en uso";
				sb.append("{"
							+ "\"estado\": \"" + "usado" + "\", "
							+ "\"mensajeError\": \"" + "El correo está en uso" + "\"}");
					
				return new ResponseEntity<String>(sb + "", HttpStatus.OK);
				
			} catch (NoResultException nre) {
				sb.append("{"
						+ "\"estado\": \"" + "valido" + "\"}");
				
				return new ResponseEntity<String>(sb + "", HttpStatus.OK);
			}
		}
		
		
		public boolean usuarioValido(String correoUser) {
			
			//Comprobamos si el correo esta en la BBDD
			try {
				@SuppressWarnings("unused")
				Profile h = (Profile)entityManager.createNamedQuery("userByMail")
					.setParameter("emailParam", correoUser).getSingleResult();
					
				return false;
				
			} catch (NoResultException nre) {
				return true;
			}
		}
		
		@Transactional
		@RequestMapping(value="/registrar", method = RequestMethod.POST)
		public String registrar(
				@RequestParam("email") String email,
				@RequestParam("first_name") String nombre,
				@RequestParam("born_date") Date fecha,
				@RequestParam("password") String password,
				@RequestParam("password_confirmation") String password1,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
					getTokenForSession(session);
					User u = new User();
					log.info("registrar");
					//Comprobamos que coinciden las contraseña.
					if(password.equals(password1) && password.length()>4){
					//comprobamos que el mail es válido.
						log.info("password buena");
						if(usuarioValido(email)){
					//Creamos usuario e insertamos.
							u.setBornDate(fecha);
							u.setMail(email);
							u.setName(nombre);
							u.setPass(passwordEncoder.encode(password));
							entityManager.persist(u);
							entityManager.flush();
							log.info("deberia haber hecho un insert");
							return "index";
						}
				
				
			}
			log.info("no pasamos de password");
			return "reg";
		}
		
		@Transactional
		@RequestMapping(value="/registrarRest", method = RequestMethod.POST)
		public String registrarRes(
				@RequestParam("email") String email,
				@RequestParam("first_name") String nombre,
				@RequestParam("cif") String cif,
				@RequestParam("telefono") String telefono,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
					getTokenForSession(session);
					Restaurant u = new Restaurant();
					log.info("registrar");
					//Creamos contraseña igual a todos pass: a
					String password = "$2a$06$xkp4ZnBqJ9UcbcB2h2M/zuA7R29AZjsrBk4DGQoJ3cOXVisReXbCC";
					//comprobamos que el mail es válido.
						log.info("password buena");
						if(usuarioValido(email)){
					//Creamos usuario e insertamos.
							u.setMail(email);
							u.setName(nombre);
							u.setPass(password);
							u.setPhone(telefono);
							u.setCif(cif);
							entityManager.persist(u);
							entityManager.flush();
							log.info("deberia haber hecho un insert");
							return "index";
						}
				
				
			
			log.info("no pasamos de password");
			return "reg";
		}

}

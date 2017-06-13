package es.ucm.fdi.iw.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Date;
import java.util.Collection;
import java.util.Iterator;
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
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import es.ucm.fdi.iw.*;
import es.ucm.fdi.iw.model.Admin;
import es.ucm.fdi.iw.model.Allergen;
import es.ucm.fdi.iw.model.Comment;
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
	private Allergen userGetAllergen(long id, User d) {
		Allergen a = entityManager.find(Allergen.class, id);
		a.getVictims().add(d);
		entityManager.persist(d);
		return a;
	}
	private Restaurant getFavRes(long id, User u) {
		Restaurant r = entityManager.find(Restaurant.class, id);
		r.getFans().add(u);
		entityManager.persist(u);
		return r;
	}
	/*
	private Comment getCommentsOfRest(long id, Restaurant r) {
		Comment c = entityManager.find(Comment.class, id);
		r.getComments().add(c);
		entityManager.persist(r);
		return c;
	}
	*/
	@RequestMapping(value="/test", method = RequestMethod.GET)
	@Transactional
	public String test() {
		
		User u = new User();
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
	/*Add*/
	@RequestMapping(value = "/addRes", method = RequestMethod.GET)
	public String addRes(Model model, HttpSession session){
		model.addAttribute("pageTitle", "AddRes");	
		
		return "addRes";
	}
/*Admin*/
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model, HttpSession session){
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("usuario", 
				entityManager.createNamedQuery("adminPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());
		
		
		model.addAttribute("pageTitle", "Admin");	
		
		return "admin";
	}
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Transactional
	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("bornDate") Date fecha,
			@RequestParam("mail") String mail,
			@RequestParam("optradio") String valor,
			Model model, HttpSession session){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		getTokenForSession(session);
		if(valor.equals("user")){
			User u = new User();
			if(usuarioValido(mail)){
				u.setBornDate(fecha);
				u.setMail(mail);
				u.setName(name);
				u.setPass(passwordEncoder.encode("a"));
				entityManager.persist(u);
				entityManager.flush();
				log.info("registrado usuario");
				return "redirect:/admin";
			}else{
				log.info("el usuario no está disponible");
				return "redirect:/add";
			}
			
		}else if(valor.equals("admin")){
			Admin u = new Admin();
			if(usuarioValido(mail)){
				u.setBornDate(fecha);
				u.setMail(mail);
				u.setName(name);
				u.setPass(passwordEncoder.encode("a"));
				entityManager.persist(u);
				entityManager.flush();
				log.info("registrado administrador");
				return "redirect:/admin";
			}else{
				log.info("el usuario no está disponible");
				return "redirect:/add";
			}
		}
		return "redirect:/admin";
	}	
	@Transactional
	@RequestMapping(value = "/rest/add", method = RequestMethod.POST)
	public String addRest(
			@RequestParam("nombre") String name,
			@RequestParam("mail") String mail,
			@RequestParam("telefono") String telefono,
			@RequestParam("cif") String cif,
			@RequestParam("direccion") String direccion,
			@RequestParam("cap") int cap,
			Model model, HttpSession session){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		getTokenForSession(session);
		
			Restaurant u = new Restaurant();
			if(usuarioValido(mail)){
				u.setName(name);
				u.setMail(mail);
				u.setPhone(telefono);
				u.setPass(passwordEncoder.encode("a"));
				u.setCif(cif);
				u.setAddress(direccion);
				u.setCapacity(cap);
				entityManager.persist(u);
				entityManager.flush();
				log.info("registrado restaurante");
				return "redirect:/admin";
			}
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String all(
			@RequestParam("what") String what,
			Model model,
			HttpSession session){
		//Comprobamos que queremos ver, usuarios o restaurantes.
		//separamos usuarios normales de restaurantes.
		if(what.equals("users")){
			model.addAttribute("usuarios", 
					entityManager.createNamedQuery("todosUsuarios").getResultList());
		}if(what.equals("restaurants")){
			model.addAttribute("usuarios", 
					entityManager.createNamedQuery("todosRestaurantes").getResultList());
		}if(what.equals("banned")){
			
		}
		
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
		model.addAttribute("platos", 
				entityManager.createNamedQuery("AllDish").getResultList());
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
		Restaurant r=new Restaurant();
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		r=(Restaurant)entityManager.createNamedQuery("restaurantePorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
		model.addAttribute("alergenos", 
				entityManager.createNamedQuery("todosAlergenos").getResultList());
		model.addAttribute("platos", 
				entityManager.createNamedQuery("platosPorRes").setParameter("idResParam",r).getResultList());
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
		Restaurant r=new Restaurant();
		r=(Restaurant)entityManager.createNamedQuery("restaurantePorID").setParameter("idParam", idRes).getSingleResult();
		
		/*model.addAttribute("platos", 
				entityManager.createNamedQuery("platosPorRes").setParameter("idResParam",r).getResultList());
		*/UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		
		Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)userDetails.getAuthorities();
		String hasRole="";
		for(GrantedAuthority authority : authorities){
			hasRole= authority.getAuthority();
		}
		if(hasRole.equals("ROLE_USER")){
			User user=(User)entityManager.createNamedQuery("usuarioPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
			boolean fav=false;
			for(Restaurant res : user.getFavoriteRestaurants()){
				if(res.getId() == idRes)
					fav=true;
			}
			List<Dish> listaPlatos=entityManager.createNamedQuery("platosPorRes").setParameter("idResParam",r).getResultList();
			List<Dish> listaPlatos1=entityManager.createNamedQuery("platosPorRes").setParameter("idResParam",r).getResultList();
			model.addAttribute("fav",fav);
			boolean borrado=true;
			
			Iterator itr = listaPlatos.iterator();
			Dish p=new Dish();
			log.info("lita alergenos user: "+user.getKnownAllergens().size());
			log.info("lita platos res: "+listaPlatos1.size());
			if(!user.getKnownAllergens().isEmpty()){
				for(Allergen a:user.getKnownAllergens()){
					borrado=true;
					while(itr.hasNext() ){
						p=(Dish)itr.next();
						borrado=true;
						for(int i=0; i<p.getAllergens().size() && borrado==true;i++){
							if(p.getAllergens().get(i).getId() == a.getId()){
								listaPlatos1.remove(p);
								borrado=false;
							}
						}
						
						}
						
					}
					
			}
		model.addAttribute("platos", listaPlatos1);
		}else{
			model.addAttribute("platos", 
					entityManager.createNamedQuery("platosPorRes").setParameter("idResParam",r).getResultList());
			
		}
		
		
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
		User u = new User();
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("usuario",(User)entityManager.createNamedQuery("usuarioPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());
		//model.addAttribute("restaurantes",entityManager.createNamedQuery("restaurantesPorUsuario").setParameter("idUsu", u.getId()).getResultList());
		model.addAttribute("pageTitle", "Mis Restaurantes");	
		
		return "mis-rest";
	}

	private LocalData localData;
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Model model, HttpSession session){
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)userDetails.getAuthorities();
		String hasRole="";
		for(GrantedAuthority authority : authorities){
			hasRole= authority.getAuthority();
		}
		log.info(hasRole);
		if(hasRole.equals("ROLE_USER")){
				model.addAttribute("usuario",
						(User)entityManager.createNamedQuery("usuarioPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());
				model.addAttribute("alergenos", 
						entityManager.createNamedQuery("todosAlergenos").getResultList());

		}else{
			model.addAttribute("usuario",
					(Admin)entityManager.createNamedQuery("adminPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());

		}
		
		
		model.addAttribute("pageTitle", "User");	
		return "user";
	}
	
	/**
	 * Uploads a photo for a user
	 * @param id of user 
	 * @param photo to upload
	 * @return
	 */
	@RequestMapping(value="/photoUser/{id}", method=RequestMethod.POST)
    public @ResponseBody String handleFileUpload(
    		@RequestParam("photo") MultipartFile photo,
    		@PathVariable("id") String id){
        if (!photo.isEmpty()) {
            try {
                byte[] bytes = photo.getBytes();
                log.info("bytes image: "+ bytes);
                File f=localData.getFile("img/user", "user"+id);
                BufferedOutputStream stream =
                        new BufferedOutputStream(
                        		new FileOutputStream(f));
                
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
		UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("usuario",(Restaurant)entityManager.createNamedQuery("restaurantePorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult());
		model.addAttribute("alergenos", 
				entityManager.createNamedQuery("todosAlergenos").getResultList());
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
				
			return "reg";
		}
		
		@Transactional
		@RequestMapping(value="/actualizar-user", method = RequestMethod.POST)
		public String actualizarUser(
				@RequestParam("pass") String pass,
				@RequestParam("pass_new") String pass1,
				@RequestParam("born_date") Date fecha,
				@RequestParam("alers") String[] alergenos,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
					BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
					UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
					Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)userDetails.getAuthorities();
					String hasRole="";
					for(GrantedAuthority authority : authorities){
						hasRole= authority.getAuthority();
					}
					if(hasRole.equals("ROLE_USER")){
						//User user=(User)session.getAttribute("usuario");	
						User user=(User)entityManager.createNamedQuery("usuarioPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
						//User user=(User)session.getAttribute("usuario");
						if(pass != "" && pass1 != ""){
							//comprobamos que la contraseña actual coincida.
							log.info(passwordEncoder.encode(pass));
							if (passwordEncoder.matches(pass, user.getPass())) {
								log.info("Coincide la contraseña");
							
								if(pass1.length()>4){
									pass1=passwordEncoder.encode(pass1);
									user.setPass(pass1);
									user.setBornDate(fecha);
									for(Allergen a: user.getKnownAllergens()){
										a.getVictims().remove(user);
									}
									for(String i: alergenos){
										userGetAllergen(Integer.parseInt(i), user);
									}
									entityManager.merge(user);
									session.setAttribute("usuario", user);
									return "redirect:/user";
								}
							}
						}else /*Comprobamos si ha cambiado la fecha sólo*/
							if(user.getBornDate()!=fecha){
								
								user.setBornDate(fecha);
								for(Allergen a: user.getKnownAllergens()){
									a.getVictims().remove(user);
								}
								for(String i: alergenos){
									userGetAllergen(Integer.parseInt(i), user);
								}
								entityManager.merge(user);
								session.setAttribute("usuario", user);
								return "redirect:/user";
							
						}
						for(Allergen a: user.getKnownAllergens()){
							a.getVictims().remove(user);
						}
						for(String i: alergenos){
							userGetAllergen(Integer.parseInt(i), user);
						}
						entityManager.merge(user);
						session.setAttribute("usuario", user);
						return "redirect:/user";
					}else{
						Admin user=(Admin)entityManager.createNamedQuery("adminPorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
						//User user=(User)session.getAttribute("usuario");
						if(pass != "" && pass1 != ""){
							//comprobamos que la contraseña actual coincida.
							if (passwordEncoder.matches(pass, user.getPass())) {
								if(pass1.length()>4){
									pass1=passwordEncoder.encode(pass1);
									user.setPass(pass1);
									user.setBornDate(fecha);
									entityManager.merge(user);
									session.setAttribute("usuario", user);
									return "user";
								}
							}
						}else /*Comprobamos si ha cambiado la fecha sólo*/
							if(user.getBornDate()!=fecha){
								
								user.setBornDate(fecha);
								entityManager.merge(user);
								session.setAttribute("usuario", user);
								return "user";
							
						}
					}
				
					return "user";
	
		}
		@Transactional
		@RequestMapping(value="/actualizar-res", method = RequestMethod.POST)
		public String actualizarRes(
				@RequestParam("pass") String pass,
				@RequestParam("pass_new") String pass1,
				@RequestParam("phone") String phone,
				@RequestParam("addr") String addr,
				@RequestParam("cap") int cap,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
			
					BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
					Restaurant user=(Restaurant)session.getAttribute("usuario");
					if(pass != "" && pass1 != ""){
						//comprobamos que la contraseña actual coincida.
						if(passwordEncoder.encode(pass).equals(user.getPass())){
							if(pass1.length()>4){
								pass1=passwordEncoder.encode(pass1);
								user.setPass(pass1);
							}
						}
					}
					//comprobamos los datos que han cambiado.
					//cambia la dirección?
					if(user.getAddress()!=addr){
						user.setAddress(addr);
					}
					//cambia la telefono?
					if(user.getPhone()!=phone){
						user.setPhone(phone);
					}
					//cambia la capacidad?
					if(user.getCapacity()!=cap){
						user.setCapacity(cap);
					}
					entityManager.merge(user);
					session.setAttribute("usuario", user);
					return "redirect:/user-restaurant";
	
		}
		
		@Transactional
		@RequestMapping(value="/addComment", method = RequestMethod.POST)
		public String addComment(
				@RequestParam("id") long idRes,
				@RequestParam("content") String content,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
			
			Restaurant r=new Restaurant();
			r=(Restaurant)entityManager.createNamedQuery("restaurantePorID").setParameter("idParam", idRes).getSingleResult();
			
			Profile p=new User();
			UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			p=(Profile)entityManager.createNamedQuery("userByMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
			
				if(content != ""){
					Comment c= new Comment();
					c.setContent(content);
					c.setLocation(r);
					c.setOwner(p);
					c.resetRates();
					entityManager.persist(c);
					
				}
					return "redirect:/restaurante?id="+idRes;
		}
		
		@Transactional
		@RequestMapping(value="/crearPlato", method = RequestMethod.POST)
		public String crearPlato(
				@RequestParam("dishName") String nombre,
				@RequestParam("kcal") int kcal,
				@RequestParam("prot") int prot,
				@RequestParam("fats") int fats,
				@RequestParam("carbs") int carbs,
				@RequestParam("alers") String[] alergenos,
				@RequestParam("precio") float precio,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
			
			Restaurant r=new Restaurant();
			UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			r=(Restaurant)entityManager.createNamedQuery("restaurantePorMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
			
				if(nombre != ""){
					Dish p= new Dish();
					p.setName(nombre);
					p.setCarbs(carbs);
					p.setFats(fats);
					p.setKcal(kcal);
					p.setProt(prot);
					p.setPrecio(precio);
					p.setLocation(r);
					entityManager.persist(p);
					for(String i: alergenos){
						getAllergen(Integer.parseInt(i), p);
					}
					
				}
					return "redirect:/user-restaurant";
		}
		@Transactional
		@RequestMapping(value="/borrarPlato", method = RequestMethod.POST)
		public String crearPlato(
				@RequestParam("id") long id,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
			
				Dish p= new Dish();
				p=(Dish)entityManager.createNamedQuery("DishID").setParameter("idParam", id).getSingleResult();
				
				for(Allergen al : p.getAllergens()){
					al.getDishes().remove(p);
				}
				entityManager.remove(p);
				entityManager.flush();
				return "redirect:/carta-restaurante";
		}
		
		@RequestMapping(value = "/modifica-plato", method = RequestMethod.GET)
		public String modificaPlato(
				@RequestParam("id") long idP,
				Model model,
				HttpSession session){
			
			model.addAttribute("plato",
					entityManager.createNamedQuery("DishID").setParameter("idParam", idP).getSingleResult());
			model.addAttribute("alergenos", 
					entityManager.createNamedQuery("todosAlergenos").getResultList());
			model.addAttribute("pageTitle", "Modificar Plato");	
			return "modifica-plato";
		}
		
		@Transactional
		@RequestMapping(value="modificaPlato", method=RequestMethod.POST)
		public String modific(
			@RequestParam("id") long id,
			@RequestParam("dishName") String nombre,
			@RequestParam("kcal") int kcal,
			@RequestParam("prot") int prot,
			@RequestParam("fats") int fats,
			@RequestParam("carbs") int carbs,
			@RequestParam("alers") String[] alergenos,
			@RequestParam("precio") float precio,
			HttpServletRequest request, HttpServletResponse response,
			Model model, 
			HttpSession session){
				Dish p= new Dish();
				p=(Dish)entityManager.createNamedQuery("DishID").setParameter("idParam", id).getSingleResult();
				
				if(!p.getName().equals(nombre)){
					p.setName(nombre);	
				}if(p.getKcal()!=kcal){
					p.setKcal(kcal);					
				}if(p.getProt()!=prot){
					p.setProt(prot);
				}if(p.getFats()!=fats){
					p.setFats(fats);
				}if(p.getCarbs()!=carbs){
					p.setCarbs(carbs);
				}if(p.getPrecio()!=precio){
					p.setPrecio(precio);
				}
				for(Allergen a: p.getAllergens()){
					a.getDishes().remove(p);
				}
				for(String i: alergenos){
					getAllergen(Integer.parseInt(i), p);
				}
				entityManager.merge(p);
				session.setAttribute("plato", p);
				return "redirect:/carta-restaurante";
		}
		
		@Transactional
		@RequestMapping(value="/anyadirFavoritos", method= RequestMethod.GET)
		public String anyadirFavoritos(
				@RequestParam("id") long id,
				HttpServletRequest request, HttpServletResponse response,
				Model model, 
				HttpSession session){
			UserDetails userDetails=(UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			User u=new User();
			u=(User)entityManager.createNamedQuery("userByMail").setParameter("emailParam", userDetails.getUsername()).getSingleResult();
			
			getFavRes(id,u);
			return "redirect:/restaurante?id="+id;
			
		}
		
		@RequestMapping(value="/buscarUser", method= RequestMethod.GET)
		public String buscarUser(
				@RequestParam("what") String what,
				@RequestParam("search") String user,
				Model model, 
				HttpSession session
				){
			if(what.equals("user")){
				model.addAttribute("usuarios", 
						entityManager.createNamedQuery("userContiene").setParameter("textoParam", user+"%").getResultList());
			}if(what.equals("res")){
				model.addAttribute("usuarios", 
						entityManager.createNamedQuery("resContiene").setParameter("textoParam", user+"%").getResultList());
			}
			model.addAttribute("pageTitle", "All");	
			return "all";
			
		}
}

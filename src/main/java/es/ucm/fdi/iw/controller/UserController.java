package es.ucm.fdi.iw.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import es.ucm.fdi.iw.LocalData;
import es.ucm.fdi.iw.model.User;


@Controller
@RequestMapping(value = "/user")

public class UserController {
	@PersistenceContext
	private EntityManager entityManager;
	@Autowired
	private PasswordEncoder passwordEncoder;
	private LocalData localData;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
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
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model model, HttpSession session){
		
		User u = new User();
		u.setName("Paco");
		u.setPass(passwordEncoder.encode("arr"));
		entityManager.persist(u);
		return "user";
	}	
}

package es.ucm.fdi.iw;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import es.ucm.fdi.iw.model.Profile;

public class IwUserDetailsService implements UserDetailsService {

	private static Logger log = Logger.getLogger(IwUserDetailsService.class);

    private EntityManager entityManager;
    
    @PersistenceContext
    public void setEntityManager(EntityManager em){
        this.entityManager = em;
    }

    public UserDetails loadUserByUsername(String username){
    	try {
	        Profile u = entityManager.createQuery("from Profile where mail = :mail", Profile.class)
	                            .setParameter("mail", username)
	                            .getSingleResult();
	        
	        ArrayList<SimpleGrantedAuthority> roles = new ArrayList<>();
		        log.info("Roles for " + username + " include " + u.getRoles());
		        roles.add(new SimpleGrantedAuthority("ROLE_" + u.getRoles()));
		        
		        
	        return new org.springframework.security.core.userdetails.User(
	        		u.getMail(), u.getPass(), roles);
	        
	    } catch (Exception e) {
    		log.info("No such user: " + username);
    		throw new UsernameNotFoundException("No such user: " + username);
    	}
    }
}
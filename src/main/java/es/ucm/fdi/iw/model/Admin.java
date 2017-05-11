
package es.ucm.fdi.iw.model;

import javax.persistence.Entity;

@Entity
public class Admin extends Profile {

	
	public Admin(String pass, String nickName, String mail) {
		super(pass, nickName, mail);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getRoles() {
		return "Admin";
	}

}

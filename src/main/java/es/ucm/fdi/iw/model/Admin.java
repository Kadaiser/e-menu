 
package es.ucm.fdi.iw.model;

import javax.persistence.Entity;

@Entity
public class Admin extends Profile {
	@Override
	public String getRoles() {
		return "ADMIN";
	}
}

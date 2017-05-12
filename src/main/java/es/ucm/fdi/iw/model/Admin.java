 
package es.ucm.fdi.iw.model;

import javax.persistence.Entity;

@Entity
public class Admin extends Profile {

	
	public Admin() {
		setRoles("ADMIN");
	}
}

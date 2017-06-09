 
package es.ucm.fdi.iw.model;

import java.sql.Date;

import javax.persistence.Entity;

@Entity
public class Admin extends Profile {
	
	private	Date bornDate;
	
	@Override
	public String getRoles() {
		return "ADMIN";
	}

	public Date getBornDate() {
		return bornDate;
	}

	public void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
	}
}

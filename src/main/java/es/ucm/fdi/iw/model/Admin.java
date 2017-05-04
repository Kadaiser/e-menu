/**
 * 
 */
package es.ucm.fdi.iw.model;

import javax.persistence.Entity;

/**
 * @author usuario_local
 *
 */
@Entity
public class Admin extends Profile {

	/**
	 * @param pass
	 * @param nickName
	 * @param mail
	 */
	public Admin(String pass, String nickName, String mail) {
		super(pass, nickName, mail);
		// TODO Auto-generated constructor stub
	}

}

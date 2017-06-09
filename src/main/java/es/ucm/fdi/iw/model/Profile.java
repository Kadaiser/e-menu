/**
 * 
 */
package es.ucm.fdi.iw.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;



@NamedQueries({
	@NamedQuery(name="userByLogin",
		query="select u from Profile u where u.name = :loginParam"),
	@NamedQuery(name="userByMail", 
		query="select u from Profile u where u.mail = :emailParam"),
	@NamedQuery(name="usuarioPorMail", 
		query="select u from Profile u where u.mail = :emailParam and u.roles = 'USER'"),
	@NamedQuery(name="todosUsuarios", 
		query="select u from Profile u where u.roles = 'USER' or u.roles = 'ADMIN'"),
	@NamedQuery(name="adminPorMail", 
		query="select u from Profile u where u.mail = :emailParam and u.roles = 'ADMIN'"),
	@NamedQuery(name="usuarioPorID",
		query="select u from Profile u where u.id = :idParam and u.roles = 'USER'"),
	@NamedQuery(name="todosRestaurantes",
		query="select r from Profile r where r.roles = 'RESTAURANT'"),
	@NamedQuery(name="restaurantePorID",
		query="select r from Profile r where r.id = :idParam and r.roles = 'RESTAURANT'"),	
	@NamedQuery(name="restaurantePorMail",
		query="select r from Profile r where r.mail = :emailParam and r.roles = 'RESTAURANT'"),	
	@NamedQuery(name="restaurantePorNombre",
		query="select r from Profile r where r.name = :nombreParam and r.roles = 'RESTAURANT'"),
	@NamedQuery(name="userContiene",
		query="select u from Profile u where u.name like :textoParam and (u.roles='USER' or u.roles = 'ADMIN')"),
	@NamedQuery(name="resContiene",
		query="select u from Profile u where u.name like :textoParam and u.roles='RESTAURANT'"),
	@NamedQuery(name="restaurantePorCiudad", 
		query="select r from Profile r where r.address = :ciudadParam and r.roles = 'RESTAURANT'")

	})


@Entity
public abstract class Profile {

	private long id;
	private String name;
	private String mail;
	private String pass;
	protected String roles;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(unique = true)
	public String getMail() {
		return mail;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

}


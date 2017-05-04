package es.ucm.fdi.iw.model;

import javax.persistence.Entity;

@Entity
public class Allergen {
	
	private long idAllerg;
	private	String name;
	
	/**
	 * @return the idAllerg
	 */
	public long getIdAllerg() {
		return idAllerg;
	}
	/**
	 * @param idAllerg the idAllerg to set
	 */
	public void setIdAllerg(long idAllerg) {
		this.idAllerg = idAllerg;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
}

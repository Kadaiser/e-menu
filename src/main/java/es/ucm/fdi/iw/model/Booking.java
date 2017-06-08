/**
 * 
 */
package es.ucm.fdi.iw.model;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


@Entity
public class Booking {

	private long id;
	private User owner;
	private Restaurant location;
	private Date date;
	private int assistants;
	private String Observations;

	/**
	 * 
	 */
	public Booking() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@ManyToOne(targetEntity=User.class)	
	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	@ManyToOne(targetEntity=Restaurant.class)	
	public Restaurant getLocation() {
		return location;
	}

	public void setLocation(Restaurant location) {
		this.location = location;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getAssistants() {
		return assistants;
	}

	public void setAssistants(int assistants) {
		this.assistants = assistants;
	}

	public String getObservations() {
		return Observations;
	}

	public void setObservations(String observations) {
		Observations = observations;
	}

}

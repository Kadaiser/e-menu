/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.sql.Date;

/**
 * @author usuario_local
 *
 */
public class Booking {

	private long idProfile;
	private long idBooking;
	long idRest;
	Date date;
	int assistants;
	String Observations;

	public Booking(long id, long idRest, Date date, int assistans, String observations) {
		super();
		this.idProfile = id;
		this.idRest = idRest;
		this.date = date;
		this.assistants = assistans;
		Observations = observations;
	}

	/**
	 * 
	 */
	public Booking() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return idProfile;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.idProfile = id;
	}

	/**
	 * @return the idRest
	 */
	public long getIdRest() {
		return idRest;
	}

	/**
	 * @param idRest
	 *            the idRest to set
	 */
	public void setIdRest(long idRest) {
		this.idRest = idRest;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	/**
	 * @return the assistants
	 */
	public int getAssistans() {
		return assistants;
	}

	/**
	 * @param assistants
	 *            the assistants to set
	 */
	public void setAssistans(int assistans) {
		this.assistants = assistans;
	}

	/**
	 * @return the observations
	 */
	public String getObservations() {
		return Observations;
	}

	/**
	 * @param observations
	 *            the observations to set
	 */
	public void setObservations(String observations) {
		Observations = observations;
	}

}

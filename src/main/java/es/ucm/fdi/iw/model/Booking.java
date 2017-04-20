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
	
	private
		long id;
		long idRest;
		/**
		 * @return the id
		 */
		public long getId() {
			return id;
		}

		/**
		 * @param id the id to set
		 */
		public void setId(long id) {
			this.id = id;
		}

		/**
		 * @return the idRest
		 */
		public long getIdRest() {
			return idRest;
		}

		/**
		 * @param idRest the idRest to set
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
		 * @param date the date to set
		 */
		public void setDate(Date date) {
			this.date = date;
		}

		/**
		 * @return the assistans
		 */
		public int getAssistans() {
			return assistans;
		}

		/**
		 * @param assistans the assistans to set
		 */
		public void setAssistans(int assistans) {
			this.assistans = assistans;
		}

		/**
		 * @return the observations
		 */
		public String getObservations() {
			return Observations;
		}

		/**
		 * @param observations the observations to set
		 */
		public void setObservations(String observations) {
			Observations = observations;
		}

		Date date;
		int assistans;
		String Observations;

	/**
	 * 
	 */
	public Booking() {
		// TODO Auto-generated constructor stub
	}

}

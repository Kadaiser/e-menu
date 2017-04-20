package es.ucm.fdi.iw.model;

import java.sql.Date;

public class Comment {
	private
		long idProfile;
		long idRest;
		long idComment;
		String content;
		Date date; 
		int rate;
		
	public
		long getIdProfile() {
			return idProfile;
		}
		/**
		 * @param idProfile the idProfile to set
		 */
		void setIdProfile(long idProfile) {
			this.idProfile = idProfile;
		}
		/**
		 * @return the idRest
		 */
		long getIdRest() {
			return idRest;
		}
		/**
		 * @param idRest the idRest to set
		 */
		void setIdRest(long idRest) {
			this.idRest = idRest;
		}
		/**
		 * @return the idComment
		 */
		long getIdComment() {
			return idComment;
		}
		/**
		 * @param idComment the idComment to set
		 */
		void setIdComment(long idComment) {
			this.idComment = idComment;
		}
		/**
		 * @return the content
		 */
		String getContent() {
			return content;
		}
		/**
		 * @param content the content to set
		 */
		void setContent(String content) {
			this.content = content;
		}
		/**
		 * @return the date
		 */
		Date getDate() {
			return date;
		}
		/**
		 * @param date the date to set
		 */
		void setDate(Date date) {
			this.date = date;
		}
		/**
		 * @return the rate
		 */
		int getRate() {
			return rate;
		}
		/**
		 * @param rate the rate to set
		 */
		void setRate(int rate) {
			this.rate = rate;
		}

}

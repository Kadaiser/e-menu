package es.ucm.fdi.iw.model;

import java.sql.Date;

public class Comment {
	private long idProfile;
	long idRest;
	long idComment;
	String content;
	Date date;
	int rateUp;
	int rateDown;

	public Comment(long idProfile, long idRest, long idComment, String content, Date date) {
		super();
		this.idProfile = idProfile;
		this.idRest = idRest;
		this.idComment = idComment;
		this.content = content;
		this.date = date;
		this.rateUp = 0;
		this.rateDown = 0;
	}

	/**
	 * @return the rateUp
	 */
	public int getRateUp() {
		return rateUp;
	}

	/**
	 * @param rateUp
	 *            the rateUp to set
	 */
	public void setRateUp(int rateUp) {
		this.rateUp += rateUp;
	}

	/**
	 * @return the rateDown
	 */
	public int getRateDown() {
		return rateDown;
	}

	/**
	 * @param rateDown
	 *            the rateDown to set
	 */
	public void setRateDown(int rateDown) {
		this.rateDown -= rateDown;
	}

	public long getIdProfile() {
		return idProfile;
	}

	/**
	 * @param idProfile
	 *            the idProfile to set
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
	 * @param idRest
	 *            the idRest to set
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
	 * @param idComment
	 *            the idComment to set
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
	 * @param content
	 *            the content to set
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
	 * @param date
	 *            the date to set
	 */
	void setDate(Date date) {
		this.date = date;
	}

}

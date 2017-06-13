package es.ucm.fdi.iw.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({
	@NamedQuery(name="allComment",
		query="select c from Comment c"),
	@NamedQuery(name="commentsByID",
		query="select c from Comment c where c.id = :idParam"),
	
})

@Entity
public class Comment {
	private long id;
	private Restaurant location;
	private Profile owner;
	
	private String content;
	//private Date date;
	private int rateUp;
	private int rateDown;


	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@ManyToOne(targetEntity=Restaurant.class)	
	public Restaurant getLocation() {
		return location;
	}

	public void setLocation(Restaurant location) {
		this.location = location;
	}

	@ManyToOne(targetEntity=Profile.class)
	public Profile getOwner() {
		return owner;
	}

	public void setOwner(Profile owner) {
		this.owner = owner;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	/*
	public Date getDate() {
		return date;rateUp
	}

	public void setDate(Date date) {
		this.date = date;
	}
	*/

	public int getRateUp() {
		return rateUp;
	}

	public void setRateUp(int rateUp) {
		this.rateUp += rateUp;
	}

	public int getRateDown() {
		return rateDown;
	}


	public void setRateDown(int rateDown) {
		this.rateDown -= rateDown;
	}
	
	public void resetRates() {
		this.rateDown = 0;
		this.rateUp = 0;
	}

}

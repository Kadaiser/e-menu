/**
 * 
 */
package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;



@Entity
public class Dish {
	
	private long id;
	private Restaurant location;
	
	private String name;
	private int kcal;
	private int prot;
	private int fats;
	private int carbs;
	
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
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getKcal() {
		return kcal;
	}
	
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	
	public int getProt() {
		return prot;
	}
	
	public void setProt(int prot) {
		this.prot = prot;
	}
	
	public int getFats() {
		return fats;
	}
	public void setFats(int fats) {
		this.fats = fats;
	}
	
	public int getCarbs() {
		return carbs;
	}
	
	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}
	
	
}

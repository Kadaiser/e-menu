package es.ucm.fdi.iw.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;


@Entity
public class Restaurant extends Profile {

	
	private String phone;
	private String address;
	private int capacity;
	private List<Dish> menu;
	private List<Comment> comments;
	
	public Restaurant() {
		setRoles("RESTAURANT");
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public int getCapacity() {
		return capacity;
	}
	
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
	@OneToMany(targetEntity=Dish.class)	
	@JoinColumn(name="id")
	public List<Dish> getMenu() {
		return menu;
	}
	
	public void setMenu(List<Dish> menu) {
		this.menu = menu;
	}
	
	@OneToMany(targetEntity=Comment.class)	
	@JoinColumn(name="id")
	public List<Comment> getComments() {
		return comments;
	}
	
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}


}

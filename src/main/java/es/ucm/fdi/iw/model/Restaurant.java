package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@NamedQueries({
	@NamedQuery(name="restaurantesPorUsuario", 
			query="select r from Restaurant r where r.fans in :idUsu")
})

@Entity
public class Restaurant extends Profile {

	
	private String phone;
	private String address;
	private int capacity;
	private String cif;
	private List<Dish> menu;
	private List<Comment> comments;
	private List<User> fans;
	
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
	//@JoinColumn(name="location_id")
	public List<Dish> getMenu() {
		return menu;
	}
	
	public void setMenu(List<Dish> menu) {
		this.menu = menu;
	}
	
	@OneToMany(targetEntity=Comment.class)	
	@JoinColumn(name="location_id")
	public List<Comment> getComments() {
		return comments;
	}
	
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	@ManyToMany(targetEntity=User.class)
	public List<User> getFans() {
		return fans;
	}

	
	public void setFans(List<User> fans) {
		this.fans = fans;
	}

	@Override
	public String getRoles() {
		return "RESTAURANT";
	}

	public String getCif() {
		return cif;
	}

	public void setCif(String cif) {
		this.cif = cif;
	}
}

/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * @author usuario_local
 *
 */
@Entity
class Restaurant extends Profile {
	private long idRestaurant;
	private String phone;
	private String address;
	private int capacity;
	
	@OneToMany(targetEntity=Dish.class)
	@JoinColumn(name="idDish")
	private List<Dish> menu;
	
	@OneToMany(targetEntity=Comment.class)
	@JoinColumn(name="idComment")
	private List<Comment> comments;

	/**
	 * @param pass
	 * @param nickName
	 * @param mail
	 */
	public Restaurant(String pass, String nickName, String mail) {
		super(pass, nickName, mail);
		this.menu = new ArrayList<Dish>();
		this.comments = new ArrayList<Comment>();
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the capacity
	 */
	public int getCapacity() {
		return capacity;
	}

	/**
	 * @param capacity
	 *            the capacity to set
	 */
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	/**
	 * @return the menu
	 */
	public List<Dish> getMenu() {
		return menu;
	}

	/**
	 * @param menu
	 *            the menu to set
	 */
	public void setMenu(List<Dish> menu) {
		this.menu = menu;
	}

	/**
	 * @return the comments
	 */
	List<Comment> getComments() {
		return comments;
	}

	/**
	 * @param comments
	 *            the comments to set
	 */
	void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	/**
	 * @return the phone
	 */
	String getPhone() {
		return phone;
	}

	/**
	 * @return the idRestaurant
	 */
	public long getIdRestaurant() {
		return idRestaurant;
	}

	/**
	 * @param idRestaurant the idRestaurant to set
	 */
	public void setIdRestaurant(long idRestaurant) {
		this.idRestaurant = idRestaurant;
	}

}

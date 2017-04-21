/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author usuario_local
 *
 */
class Restaurant extends Profile {
	private 
	String phone;
	String address;
	int capacity;
	List<Dish> menu;
	List<Comment> comments;

	public
	/**
	 * @param pass
	 * @param nickName
	 * @param mail
	 */
	Restaurant(String pass, String nickName, String mail) {
		super(pass, nickName, mail);
		this.menu = new ArrayList<Dish>();
		this.comments = new ArrayList<Comment>();
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the address
	 */
	String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the capacity
	 */
	int getCapacity() {
		return capacity;
	}

	/**
	 * @param capacity
	 *            the capacity to set
	 */
	void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	/**
	 * @return the menu
	 */
	List<Dish> getMenu() {
		return menu;
	}

	/**
	 * @param menu
	 *            the menu to set
	 */
	void setMenu(List<Dish> menu) {
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

}

/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

/**
 * @author usuario_local
 *
 */
@Entity
public class User extends Profile {

	public User(String pass, String nickName, String mail) {
		super(pass, nickName, mail);
		// TODO Auto-generated constructor stub
	}

	private	Date bornDate;
	private	int age;
	private	List<Allergen> knownAllergens;
	private	List<Restaurant> favoriteRestaurants;
	private List<Booking> bookings;
	private	List<Comment> comments;
	private	float karma;





	public Date getBornDate() {
		return bornDate;
	}
	
	public void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	@OneToMany(targetEntity=Allergen.class)	
	@JoinColumn(name="id")
	public List<Allergen> getKnownAllergens() {
		return knownAllergens;
	}
	
	public void setKnownAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}
	
	@OneToMany(targetEntity=Restaurant.class)	
	@JoinColumn(name="id")
	public List<Restaurant> getFavoriteRestaurants() {
		return favoriteRestaurants;
	}
	
	public void setFavoriteRestaurants(List<Restaurant> favoriteRestaurants) {
		this.favoriteRestaurants = favoriteRestaurants;
	}
	
	@OneToMany(targetEntity=Booking.class)	
	@JoinColumn(name="id")
	public List<Booking> getBookings() {
		return bookings;
	}
	
	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}
	
	@OneToMany(targetEntity=Comment.class)	
	@JoinColumn(name="id")
	public List<Comment> getComments() {
		return comments;
	}
	
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	/**
	 * @return the karma
	 */
	public float getKarma() {
		return karma;
	}
	/**
	 * @param karma the karma to set
	 */
	public void setKarma(float karma) {
		this.karma = karma;
	}
	
	public void karmaUp(){
		this.karma += 0.1;
	}
	
	public void karmaDown(){
		this.karma -= 0.1;
	}
	
	public boolean validKarma(){
		return (this.karma < 0) ? false :  true;
	}

}


package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;

@Entity
public class User extends Profile {


	private	Date bornDate;
	private	int age;
	private	List<Allergen> knownAllergens;
	private	List<Restaurant> favoriteRestaurants;
	private List<Booking> bookings;
	private	List<Comment> comments;
	private	float karma;

	
	public User() {
		setRoles("USER");
	}

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
	
	@ManyToMany(targetEntity=Allergen.class, mappedBy="allergens")	
	public List<Allergen> getKnownAllergens() {
		return knownAllergens;
	}
	
	public void setKnownAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}
	
	@ManyToMany(targetEntity=Restaurant.class, mappedBy="restaurants")	
	public List<Restaurant> getFavoriteRestaurants() {
		return favoriteRestaurants;
	}
	
	public void setFavoriteRestaurants(List<Restaurant> favoriteRestaurants) {
		this.favoriteRestaurants = favoriteRestaurants;
	}
	
	@ManyToMany(targetEntity=Booking.class, mappedBy="bookings")	
	public List<Booking> getBookings() {
		return bookings;
	}
	
	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}
	
	@ManyToMany(targetEntity=Comment.class, mappedBy="comments")	
	public List<Comment> getComments() {
		return comments;
	}
	
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	
	public float getKarma() {
		return karma;
	}
	
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

	@Override
	public String getRoles() {
		return "User";
	}

}

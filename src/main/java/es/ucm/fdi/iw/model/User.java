
package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
@NamedQueries({
	})
@Entity
public class User extends Profile {


	private	Date bornDate;
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
	
	
	@ManyToMany(targetEntity=Allergen.class, mappedBy="victims")	
	public List<Allergen> getKnownAllergens() {
		return knownAllergens;
	}
	
	public void setKnownAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}
	
	@ManyToMany(targetEntity=Restaurant.class, mappedBy="fans")	
	public List<Restaurant> getFavoriteRestaurants() {
		return favoriteRestaurants;
	}
	
	public void setFavoriteRestaurants(List<Restaurant> favoriteRestaurants) {
		this.favoriteRestaurants = favoriteRestaurants;
	}
	
	@OneToMany(targetEntity=Booking.class)
	@JoinColumn(name="owner")
	public List<Booking> getBookings() {
		return bookings;
	}
	
	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}
	
	@OneToMany(targetEntity=Comment.class)
	@JoinColumn(name="owner")
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
		return "USER";
	}

}

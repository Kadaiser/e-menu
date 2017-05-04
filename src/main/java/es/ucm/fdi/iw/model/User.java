/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

/**
 * @author usuario_local
 *
 */
public class User extends Profile {

	private	Date bornDate;
	private	int age;
	
	@OneToMany(targetEntity=Allergen.class)
	@JoinColumn(name="idAllerg")
	private	List<Allergen> knownAllergens;
	
	@OneToMany(targetEntity=Restaurant.class)
	@JoinColumn(name="idRestaurant")
	private	List<Restaurant> favoriteRestaurants;
	
	@OneToMany(targetEntity=Booking.class)
	@JoinColumn(name="idBooking")
	private List<Booking> bookings;
	
	@OneToMany(targetEntity=Comment.class)
	@JoinColumn(name="idComment")
	private	List<Comment> comments;
	
	private	float karma;


	public User(String pass, String nickName, String mail, Date bornDate){
		super(pass, nickName, mail);	
		this.setBornDate(bornDate);
		this.age = processAge(bornDate);
		this.knownAllergens = new ArrayList<Allergen>();
		this.comments = new ArrayList<Comment>();
		this.bookings = new ArrayList<Booking>();
		this.setFavoriteRestaurants(new ArrayList<Restaurant>());
		this.karma = 0;
	}
	

	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public static int processAge(Date bornDate) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	/**
	 * @return the bornDate
	 */
	 Date getBornDate() {
		return bornDate;
	}

	/**
	 * @param bornDate the bornDate to set
	 */
	 public void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
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

	 List<Allergen> getKnownAllergens() {
		return knownAllergens;
	}
	 void setKnownsAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}

	/**
	 * @param knownAllergens the knownAllergens to set
	 */
	public void setKnownAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}
		
	 List<Comment> getComments() {
		return comments;
	}
	 void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	/**
	 * @return the favoriteRestaurants
	 */
	 List<Restaurant> getFavoriteRestaurants() {
		return favoriteRestaurants;
	}

	/**
	 * @param favoriteRestaurants the favoriteRestaurants to set
	 */
	 void setFavoriteRestaurants(List<Restaurant> favoriteRestaurants) {
		this.favoriteRestaurants = favoriteRestaurants;
	}


}

/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * @author usuario_local
 *
 */
public class User extends Profile {

	private	Date bornDate;
	private	int age;
	private	List<Allergen> knownAllergens;
	private	List<Restaurant> favoriteRestaurants;
	private	List<Booking> myBookings;
	private	List<Comment> comments;
	private	float karma;


	public User(String pass, String nickName, String mail, Date bornDate){
		super(pass, nickName, mail);	
		this.setBornDate(bornDate);
		this.age = processAge(bornDate);
		this.knownAllergens = new ArrayList<Allergen>();
		this.comments = new ArrayList<Comment>();
		this.myBookings = new ArrayList<Booking>();
		this.setFavoriteRestaurants(new ArrayList<Restaurant>());
		this.karma = 0;
	}
	
	//=================RELATED TO AGE ATTRIBUTES===============================//
	int getAge() {
		return age;
	}
	
	void setAge(int age) {
		this.age = age;
	}
	
	static int processAge(Date bornDate) {
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
	 void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
	}

	//=================RELATED TO KARMA ATTRIBUTES===============================//
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
	 
	//=================RELATED TO ALLERGENS ATTRIBUTES===============================//
	
	 List<Allergen> getKnownAllergens() {
		return knownAllergens;
	}
	 void setKnownsAllergens(List<Allergen> knownAllergens) {
		this.knownAllergens = knownAllergens;
	}
	
	//=================RELATED TO COMMENTS ATTRIBUTES===============================//
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
	
	//=================RELATED TO FAVORITE RESTAURANT ATTRIBUTES====================//

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

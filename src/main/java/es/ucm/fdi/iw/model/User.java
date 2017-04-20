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

	private
		Date bornDate;
		int age;
		List<Allergen> knownAllergens;
		List<Restaurant> favoriteRestaurants;
		List<Comment> comments;
	
		
	public
		/**
		 * 
		 */
		User(String pass, String nickName, String mail, Date bornDate){
			super(pass, nickName, mail);	
			this.setBornDate(bornDate);
			this.age = processAge(bornDate);
			this.knownAllergens = new ArrayList<Allergen>();
			this.comments = new ArrayList<Comment>();
			this.setFavoriteRestaurants(new ArrayList<Restaurant>());
		}
		
		//=================RELATED TO AGE ATRIBUTES===============================//
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
	
		
		//=================RELATED TO ALLERGENS ATRIBUTES===============================//
		
		 List<Allergen> getKnownAllergens() {
			return knownAllergens;
		}
		 void setKnownsAllergens(List<Allergen> knownAllergens) {
			this.knownAllergens = knownAllergens;
		}
		
		//=================RELATED TO COMMENTS ATRIBUTES===============================//
		
		 List<Comment> getComments() {
			return comments;
		}
		 void setComments(List<Comment> comments) {
			this.comments = comments;
		}
		
		//=================RELATED TO FAVORITE RESTAURANT ATRIBUTES====================//
	
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

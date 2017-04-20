/**
 * 
 */
package es.ucm.fdi.iw.model;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;



/**
 * @author Kadaiser
 * Objeto definido para representar un plato en la carta de restaurante,
 * Un plato se refleja mediante un Identificador, su nombre, y las 
 * caracteristicas propias del mismo.
 */

public class Dish {
	private long id;
	private String name;
	private int kcal;
	private int prot;
	private int fats;
	private int carbs;
	private List<Allergen> allergens;
	//private List<Ingredients> ingredients;
	
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getKcal() {
		return kcal;
	}
	
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	
	public int getProt() {
		return prot;
	}
	
	public void setProt(int prot) {
		this.prot = prot;
	}
	
	public int getFats() {
		return fats;
	}
	
	public void setFats(int fats) {
		this.fats = fats;
	}
	
	public int getCarbs() {
		return carbs;
	}
	
	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}
	
	public List<Allergen> getAllergens() {
		return allergens;
	}
	
	public void setAllergens(List<Allergen> allergens) {
		this.allergens = allergens;
	}

	
}

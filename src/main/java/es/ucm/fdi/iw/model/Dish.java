/**
 * 
 */
package es.ucm.fdi.iw.controller.model;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;



/**
 * @author Kadaiser
 * Objeto definido para representar un plato en la carta de restaurante,
 * Un plato se refleja mediante un Identificador, su nombre, y las 
 * caracteristicas propias del mismo.
 */

public class Plate {
	private long id;
	private String name;
	private int Kcal;
	private int Prot;
	private int Fats;
	private int HC;
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
		return Kcal;
	}
	
	public void setKcal(int kcal) {
		Kcal = kcal;
	}
	
	public int getProt() {
		return Prot;
	}
	
	public void setProt(int prot) {
		Prot = prot;
	}
	
	public int getFats() {
		return Fats;
	}
	
	public void setFats(int fats) {
		Fats = fats;
	}
	
	public int getHC() {
		return HC;
	}
	
	public void setHC(int hC) {
		HC = hC;
	}
	
	public List<Allergen> getAllergens() {
		return allergens;
	}
	
	public void setAllergens(List<Allergen> allergens) {
		this.allergens = allergens;
	}

	
}

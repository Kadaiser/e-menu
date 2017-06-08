/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


@NamedQueries({
	@NamedQuery(name="AllDish",
		query="select d from Dish d"),
	@NamedQuery(name="DishID",
		query="select d from Dish d where d.id = :idParam"),
	@NamedQuery(name="DishName",
		query="select d from Dish d where d.name = :idParam"),
	@NamedQuery(name="platosPorRes", 
		query="select p from Dish p where p.location = :idResParam")
	})

@Entity
public class Dish {
	
	private long id;
	private Restaurant location;
	
	private String name;
	private int kcal;
	private int prot;
	private int fats;
	private int carbs;
	private float precio;
	private List<Allergen> allergens;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	@ManyToOne(targetEntity=Restaurant.class)
	@JoinColumn(name="rest_id")
	public Restaurant getLocation() {
		return location;
	}
	
	public void setLocation(Restaurant location) {
		this.location = location;
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

	@ManyToMany(targetEntity=Allergen.class, mappedBy="dishes")
	public List<Allergen> getAllergens() {
		return allergens;
	}

	public void setAllergens(List<Allergen> allergens) {
		this.allergens = allergens;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}
	
	
}

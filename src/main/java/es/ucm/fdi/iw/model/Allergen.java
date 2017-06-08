package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({
	@NamedQuery(name="todosAlergenos",
		query="select a from Allergen a"),
	@NamedQuery(name="alergenosPorID",
		query="select a from Allergen a where a.id = :idParam"),
	@NamedQuery(name="alergenosPorNombre",
		query="select a from Allergen a where a.name = :nombreParam")
})

@Entity
public class Allergen {
	
	private long id;
	private	String name;
	private List<Dish> dishes;
	private List<User> victims;

	
	
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
	
	
	@ManyToMany(targetEntity=User.class)
	public List<User> getVictims() {
		return victims;
	}
	
	public void setVictims(List<User> victims) {
		this.victims = victims;
	}
	
	@ManyToMany(targetEntity=Dish.class)
	public List<Dish> getDishes() {
		return dishes;
	}
	public void setDishes(List<Dish> dishes) {
		this.dishes = dishes;
	}
	
}

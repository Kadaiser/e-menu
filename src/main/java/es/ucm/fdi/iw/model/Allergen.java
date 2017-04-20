package es.ucm.fdi.iw.model;

public class Allergen {
	
	//enum AllergenList {APIO, GLUTEN, CRUSTACEOS, HUEVOS, PESCADO, ALTRAMUCES, LECHE, MOLUSCOS, MOSTAZA, FRUTOSSECOS, CACAHUETES, SESAMO, SOJA, SULFITOS};
		
	private long idAllerg;
	private	String name;
	
	/**
	 * @return the idAllerg
	 */
	public long getIdAllerg() {
		return idAllerg;
	}
	/**
	 * @param idAllerg the idAllerg to set
	 */
	public void setIdAllerg(long idAllerg) {
		this.idAllerg = idAllerg;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
}

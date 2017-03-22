package es.ucm.fdi.iw.controller.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Date;

public class User {

	private long id;
	private String login;
	private String nick;
	private String bornDate;
	private int age;
	private String mail;
	private String salt;
	private String encryptedPass;
	private String userFrom;
	private List<Allergen> knownsAllergens;
	private List<Restaurant> favoritesRestaurants;
	private List<Comment> comments;
	
	
	public static User createUser(String login, String pass, String nickName,
									String mail, String bornDate, String userFrom){
		User u = new User();
		u.login = login;
		u.nick = nickName;
		u.mail = mail;
		u.bornDate = bornDate;
		u.age = processAge(bornDate);
		u.userFrom = userFrom;
		u.knownsAllergens = new ArrayList<Allergen>();
		u.comments = new ArrayList<Comment>();
		u.favoritesRestaurants = new ArrayList<Restaurant>();
		
		//Generate a random salt, as a first security layer
		Random r = new Random();
		byte[] saltBytes = new byte[16];
		r.nextBytes(saltBytes);
		
		//store salt for future decrypt´s (storage as String)
		u.salt = byteToHex(saltBytes);
		//store pass encrypted by salt + SHA-1 algorithm, as a second security layer
		u.encryptedPass = encryptPass(pass, u.salt);
		return u;
		
	}
	
	//=================PASS ENCRYPTION METHODS===========================//
	
	/**
	 * Translate a byte array to a hexadecimal string
	 * @param bytes bytes array to translate.
	 * @return translated hexadecimal String 	
	 */
	private static String byteToHex(byte[] bytes) {
		StringBuilder str = new StringBuilder();
		for(int i = 0; i < bytes.length; ++i)
			str.append(Integer.toString((bytes[i]&0xff) + 0x100, 16).substring(1));
		return str.toString();
	}
	
	/**
	 * Translate a hexadecimal string to a byte array
	 * @param salt string to be translated
	 * @return translated byte array
	 */
	private static byte[] hexToByte(String salt) {
		int newSize = salt.length()/2;
		byte[] array = new byte[newSize];
		for(int i = 0; i < newSize; ++i){
			String hex = salt.substring(i*2, (i+1)*2);
			array[i] = (byte)Integer.parseInt(hex, 16);
		}
		return array;
	}
	
	/**
	 * Generate the SHA-1 of a byte array
	 * @param hash to encrypt
	 * @return encrypted SHA-1 byte array
	 */
	private static byte[] hash(byte[] toHash) {
		MessageDigest md = null;
		try{
			md = MessageDigest.getInstance("SHA-1");
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace();
		}
		return md.digest(toHash);
	}
	
	/**
	 * Create a hexadecimal string from a user´s pass and salt
	 * @param pass String to shadow
	 * @param salt to shadow pass
	 * @return a hexadecimal string, the one that will be stored on the BBDD,
	 * gets another security layer. It´s use salt to defend from brute force.
	 */
	public static String encryptPass(String pass, String salt) {
		byte[] saltBytes = hexToByte(salt);
		byte[] passBytes = pass.getBytes();

		//append arrays content´s in a new array, hash it, and returned as String	
		byte[] toHash = new byte[saltBytes.length + passBytes.length];
		System.arraycopy(passBytes, 0, toHash, 0, passBytes.length);
		System.arraycopy(saltBytes, 0, toHash, passBytes.length, saltBytes.length);
		return byteToHex(hash(toHash));
	}

	
	/**
	 * validate password string method against storage salt of the user
	 * @param pass to validate
	 * @return true if encrypt respond as correct for the given pass
	 */
	public boolean validPassword(String pass){
		return encryptPass(pass, this.salt).equals(this.encryptedPass);
	}
	
	//=====================RELEATED TO ID ATRIBUTES============================//

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	//=====================RELEATED TO LOGIN ATRIBUTES=========================//
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}

	//=====================RELEATED TO NAME ATRIBUTES==========================//
	public String getName() {
		return nick;
	}
	
	public void setName(String name) {
		this.nick = name;
	}
	
	//=================RELEATED TO AGE ATRIBUTES===============================//
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	private static int processAge(String bornDate) {
		// TODO Auto-generated method stub
		return 0;
	
	}
	
	//=================RELEATED TO MAIL ATRIBUTES===============================//
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getHashedAndSalted() {
		return encryptedPass;
	}
	public void setHashedAndSalted(String hashedAndSalted) {
		this.encryptedPass = hashedAndSalted;
	}
	
	//=================RELEATED TO ALLERGENS ATRIBUTES===============================//
	
	public List<Allergen> getKnownsAllergens() {
		return knownsAllergens;
	}
	public void setKnownsAllergens(List<Allergen> knownsAllergens) {
		this.knownsAllergens = knownsAllergens;
	}
	
	//=================RELEATED TO COMMENTS ATRIBUTES===============================//
	
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

}

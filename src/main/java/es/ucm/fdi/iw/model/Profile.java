/**
 * 
 */
package es.ucm.fdi.iw.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;




/**
 * @author usuario_local
 *
 */
public abstract class Profile {
	private long idProfile;
	private String name;
	private String mail;
	private String salt;
	private String encryptedPass;
		//private String userFrom;
	
	
	
	public Profile (String pass, String nickName, String mail){
		
		this.name = nickName;
		this.mail = mail;
		//u.userFrom = userFrom;

		
		//Generate a random salt, as a first security layer
		Random r = new Random();
		byte[] saltBytes = new byte[16];
		r.nextBytes(saltBytes);
		
		//store salt for future decrypt´s (storage as String)
		this.salt = byteToHex(saltBytes);
		//store pass encrypted by salt + SHA-1 algorithm, as a second security layer
		this.encryptedPass = encryptPass(pass, this.salt);
	}

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

	public long getId() {
		return idProfile;
	}
	
	public void setId(long id) {
		this.idProfile = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
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

}


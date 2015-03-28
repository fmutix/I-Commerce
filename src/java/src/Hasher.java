package src;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Hasher{
	private Hasher(){}
	
	public static String digest(String password){
		MessageDigest md;
		StringBuilder hashedPassword = new StringBuilder();
		try{
			md = MessageDigest.getInstance("SHA-512");
			md.update(password.getBytes());
			byte[] mb = md.digest();
			
			for (int i = 0; i < mb.length; i++) {
				byte temp = mb[i];
				String s = Integer.toHexString(new Byte(temp));
				while (s.length() < 2) {
					s = "0" + s;
				}
				s = s.substring(s.length() - 2);
				hashedPassword.append(s);
			}
		}catch (NoSuchAlgorithmException e) {
			System.out.println("ERROR: " + e.getMessage());
		}
		return hashedPassword.toString();
	}
}

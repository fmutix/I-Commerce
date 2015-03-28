package bean;

import java.io.Serializable;

public class Member implements Serializable{
	private String name;
	private String password;
	private String email;
	private Boolean guild;

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

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the guild
	 */
	public Boolean getGuild() {
		return guild;
	}

	/**
	 * @param guild the guild to set
	 */
	public void setGuild(Boolean guild) {
		this.guild = guild;
	}
}

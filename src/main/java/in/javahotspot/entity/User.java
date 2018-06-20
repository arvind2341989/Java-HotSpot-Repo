package in.javahotspot.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_information")
public class User {
	private int id;
	private String firstName;
	private String lastName;
	private String emailAddress;
	private String password;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usr_id")
	public int getId() {
		return id;
	}
	@Column(name = "usr_fname")
	public String getFirstName() {
		return firstName;
	}
	@Column(name = "usr_lname")
	public String getLastName() {
		return lastName;
	}
	@Column(name = "usr_email_add")
	public String getEmailAddress() {
		return emailAddress;
	}
	@Column(name = "usr_pwd")
	public String getPassword() {
		return password;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}

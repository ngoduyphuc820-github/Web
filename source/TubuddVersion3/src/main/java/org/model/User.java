package org.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "USERS")
@Component
public class User {

	@Id
	@Column(name = "ID_USER")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idUser;
	
	@Column(name = "CODE_USER")
	String codeUser;
	
	@Column(name = "FIRSTNAME")
	String firstName;
	
	@Column(name = "LASTNAME")
	String lastName;
	
	@Column(name = "SEX")
	int sex;
	
	@Column(name = "PHONE")
	String phoneNumber;
	
	@Column(name = "ID_ACCOUNT")
	int idAccount;
	
	@Column(name = "ID_ROLE")
	int idRole;
	
	@Column(name = "EMAIL")
	String email;
	
	@Column(name = "AVATAR")
	String avatar;
	
	@Column(name = "STATE")
	int state;
	
	
	public User() {	}


	public int getIdUser() {
		return idUser;
	}


	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}


	public String getCodeUser() {
		return codeUser;
	}


	public void setCodeUser(String codeUser) {
		this.codeUser = codeUser;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public int getSex() {
		return sex;
	}


	public void setSex(int sex) {
		this.sex = sex;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public int getIdAccount() {
		return idAccount;
	}


	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}


	public int getIdRole() {
		return idRole;
	}


	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAvatar() {
		return avatar;
	}


	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	public int getState() {
		return state;
	}


	public void setState(int state) {
		this.state = state;
	}
	
	
}

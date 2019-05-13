package ndp.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "ACCOUNT")
public class Account {

	@Id
	int id_account;
	String username;
	String password;
	boolean state;

//	public Account(int id_account, String username, String password, boolean state) {
//		super();
//		this.id_account = id_account;
//		this.username = username;
//		this.password = password;
//		this.state = state;
//	}

	public int getId_account() {
		return id_account;
	}

	public void setId_account(int id_account) {
		this.id_account = id_account;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

}

package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;


@Entity
@Table(name = "ACCOUNT")
@Component
public class Account {
	
	int id;
	String username;
	String password;
	int state;
	
	public Account() {}
	
	public Account(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	@Id
	@Column(name = "ID_ACCOUNT")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "USERNAME")
	@NotEmpty(message = "Username not empty")
	@Email(message = "Email not valid")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "PASSWORD")
//	@Pattern(regexp = "^[a-zA-Z0-9] {3}",message="Password must number or charactor")
	@Size(min = 8,max = 50, message = "Password must between 8 and 50")
	@NotBlank(message = "Password not blank")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "STATE")
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	

	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", password=" + password + ", state=" + state + "]";
	}
	
}

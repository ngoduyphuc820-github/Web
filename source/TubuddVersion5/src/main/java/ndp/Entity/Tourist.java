package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "TOURIST")
@Component
public class Tourist{

	@Id
	@Column(name = "ID_TOURIST")
	int idTourist;
	
	@Column(name = "PLACE_FROM")
	@NotEmpty(message = "Place From is not null")
	String placeFrom;
	
	@Column(name = "NATIONALITY")
	@NotEmpty(message = "Nationality is not null")
	String nationality;

	public Tourist() {
	}

	public int getIdTourist() {
		return idTourist;
	}

	public void setIdTourist(int idTourist) {
		this.idTourist = idTourist;
	}

	public String getPlaceFrom() {
		return placeFrom;
	}

	public void setPlaceFrom(String placeFrom) {
		this.placeFrom = placeFrom;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
}

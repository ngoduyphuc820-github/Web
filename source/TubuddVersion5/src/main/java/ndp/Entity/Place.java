package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "PLACE_VISIT")
@Component
public class Place {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_PLACE")
	int idPlace;
	
	@Column(name = "NAME_PLACE")
	String namePlace;
	
	@Column(name = "ID_TIME")
	int idTime;
	
	@Column(name = "ID_TOWN")
	int idTown;
	
	@Column(name = "ADDRESS")
	String address;
	
	@Column(name = "DESCRIBLE")
	String describle;
	
	public Place() {}

	public int getIdPlace() {
		return idPlace;
	}

	public void setIdPlace(int idPlace) {
		this.idPlace = idPlace;
	}

	public String getNamePlace() {
		return namePlace;
	}

	public void setNamePlace(String namePlace) {
		this.namePlace = namePlace;
	}

	public int getIdTime() {
		return idTime;
	}

	public void setIdTime(int idTime) {
		this.idTime = idTime;
	}

	public int getIdTown() {
		return idTown;
	}

	public void setIdTown(int idTown) {
		this.idTown = idTown;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescrible() {
		return describle;
	}

	public void setDescrible(String describle) {
		this.describle = describle;
	}
	
	
}

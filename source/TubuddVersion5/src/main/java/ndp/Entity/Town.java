package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "TOWN")
@Component
public class Town {

	@Id
	@Column(name = "ID_TOWN")
	int idTown;
	
	@Column(name = "TOWN")
	String nameTown;
	
	@Column(name = "ID_CITY")
	int idCity;
	
	public Town() {	}

	public int getIdTown() {
		return idTown;
	}

	public void setIdTown(int idTown) {
		this.idTown = idTown;
	}

	public String getNameTown() {
		return nameTown;
	}

	public void setNameTown(String nameTown) {
		this.nameTown = nameTown;
	}

	public int getIdCity() {
		return idCity;
	}

	public void setIdCity(int idCity) {
		this.idCity = idCity;
	}
	
}

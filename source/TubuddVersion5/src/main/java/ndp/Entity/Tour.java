package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "TOUR")
@Component
public class Tour {

	@Id
	@Column(name = "ID_TOUR")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idTour;
	
	@Column(name = "CODE_TOUR")
	String codeTour;
	
	@Column(name = "NAME_TOUR")
	@NotEmpty(message = "Name Tour not nul")
	String nameTour;
	
	@Column(name = "ID_TOURGUIDE")
	int idTourGuide;
	
	@Column(name = "ID_CITY")
	int idCity;
	
	@Column(name = "PRICE")
	double price;
	
	@Column(name = "video")
	String video;
	
	@Column(name = "DESCRIBLE")
	String describle;
	
	public Tour() {	}

	public int getIdTour() {
		return idTour;
	}

	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}

	public String getCodeTour() {
		return codeTour;
	}

	public void setCodeTour(String codeTour) {
		this.codeTour = codeTour;
	}

	public String getNameTour() {
		return nameTour;
	}

	public void setNameTour(String nameTour) {
		this.nameTour = nameTour;
	}

	public int getIdTourGuide() {
		return idTourGuide;
	}

	public void setIdTourGuide(int idTourGuide) {
		this.idTourGuide = idTourGuide;
	}

	public int getIdCity() {
		return idCity;
	}

	public void setIdCity(int idCity) {
		this.idCity = idCity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getDescrible() {
		return describle;
	}

	public void setDescrible(String describle) {
		this.describle = describle;
	}

	
}

package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "BOOK_TOUR")
@Component
public class BookTour {
	
	@Id
	@Column(name = "ID_BOOKTOUR")
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	int idBookTour;
	
	@Column(name = "ID_TOUR")
	int idTour;
	
	@Column(name = "ID_TOURIST")
	int idTourist;
	
	@Column(name = "COST")
	double cost;//total = price * quantityPeopple
	
	@Column(name = "STATUS")
	int status;
	
	@Column(name = "STATE")
	int state;
	
	@Column(name = "PAYMENT_STATUS")
	int paymentStatus;
	
	@Column(name = "QUANTITY_PEOPLE")
	int quantityPeople;
	
	public BookTour() {	}

	public int getIdBookTour() {
		return idBookTour;
	}

	public void setIdBookTour(int idBookTour) {
		this.idBookTour = idBookTour;
	}

	public int getIdTour() {
		return idTour;
	}

	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}

	public int getIdTourist() {
		return idTourist;
	}

	public void setIdTourist(int idTourist) {
		this.idTourist = idTourist;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(int paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public int getQuantityPeople() {
		return quantityPeople;
	}

	public void setQuantityPeople(int quantityPeople) {
		this.quantityPeople = quantityPeople;
	}

	@Override
	public String toString() {
		return "BookTour [idBookTour=" + idBookTour + ", idTour=" + idTour + ", idTourist=" + idTourist + ", cost="
				+ cost + ", status=" + status + ", state=" + state + ", paymentStatus=" + paymentStatus
				+ ", quantityPeople=" + quantityPeople + "]";
	}
	
	
}

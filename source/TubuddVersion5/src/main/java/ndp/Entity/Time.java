package ndp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "TIMES")
@Component
public class Time {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_TIME")
	int idTime;
	
	@Column(name = "TIME_START")
	String timeStart;
	
	@Column(name = "TIME_END")
	String timeEnd;
	
	@Column(name = "ID_BOOKTOUR")
	int idBookTour;
	
	public Time() {	}

	public int getIdTime() {
		return idTime;
	}

	public void setIdTime(int idTime) {
		this.idTime = idTime;
	}

	public String getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}

	public String getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}

	public int getIdBookTour() {
		return idBookTour;
	}

	public void setIdBookTour(int idBookTour) {
		this.idBookTour = idBookTour;
	}

	
	
}

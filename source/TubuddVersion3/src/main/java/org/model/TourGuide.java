package org.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "TOUR_GUIDE")
@Component
public class TourGuide{

	@Id
	@Column(name = "ID_TOURGUIDE")
	int idTourGuide;
	
	@Column(name = "DOB")
	String dob;
	
	@Column(name = "INDENTITY_CARD")
	String indentityCard;
	
	@Column(name = "ID_TOWN")
	int idTown;
	
	@Column(name = "ADDRESS")
	String address;
	
	@Column(name = "PROMOTION")
	String promotion;
	
	@Column(name = "VIDEO_LINK")
	String videoLink;
	
	@Column(name = "REPULATION")
	int repulation;
	
	public TourGuide() {
	}

	public int getIdTourGuide() {
		return idTourGuide;
	}

	public void setIdTourGuide(int idTourGuide) {
		this.idTourGuide = idTourGuide;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getIndentityCard() {
		return indentityCard;
	}

	public void setIndentityCard(String indentityCard) {
		this.indentityCard = indentityCard;
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

	public String getPromotion() {
		return promotion;
	}

	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}

	public String getVideoLink() {
		return videoLink;
	}

	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}

	public int getRepulation() {
		return repulation;
	}

	public void setRepulation(int repulation) {
		this.repulation = repulation;
	}
	
	
	
}

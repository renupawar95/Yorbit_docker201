package com.mindtree.tourismapplication.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class State {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stateId;
	private String stateName;
	@OneToMany(mappedBy = "state")
	private List<Tourism> tourisms;

	public State(int stateId, String stateName, List<Tourism> tourisms) {
		super();
		this.stateId = stateId;
		this.stateName = stateName;
		this.tourisms = tourisms;
	}

	public State() {
		super();
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public List<Tourism> getTourisms() {
		return tourisms;
	}

	public void setTourisms(List<Tourism> tourisms) {
		this.tourisms = tourisms;
	}

	@Override
	public String toString() {
		return "State [stateId=" + stateId + ", stateName=" + stateName + ", tourisms=" + tourisms + "]";
	}

}

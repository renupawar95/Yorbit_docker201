package com.mindtree.tourismapplication.dto;

import java.util.List;

public class StateDto {
	private int stateId;
	private String stateName;
	private List<TourismDto> tourismDtos;

	public StateDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StateDto(int stateId, String stateName, List<TourismDto> tourismDtos) {
		super();
		this.stateId = stateId;
		this.stateName = stateName;
		this.tourismDtos = tourismDtos;
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

	public List<TourismDto> getTourismDtos() {
		return tourismDtos;
	}

	public void setTourismDtos(List<TourismDto> tourismDtos) {
		this.tourismDtos = tourismDtos;
	}

}

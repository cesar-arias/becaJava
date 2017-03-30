package com.accenture.model;

import java.util.List;
import java.util.ArrayList;

public class Shopping {
	
	private String name;
	private List theBill = new ArrayList<Integer>();
	
	public void setName(String name){
		this.name = name;
	}
	
	public String getName(){
		return this.name;
	}
	
	public void setTheBill(int money){
		this.theBill.add(money);
	}

	public int getTheBill() {
		int sum = 0;
		for (int i = 0; i < theBill.size(); i++){
			sum += (Integer)theBill.get(i);
		}
	     return sum;
	}	
}

package com.accenture.model;

import java.util.List;
import java.util.ArrayList;

public class Exercise {

	private List list = new ArrayList<String>();
	private List theBill = new ArrayList<Integer>();

	public void fillList(String data){
		this.list.add(data);
	}
	
	public void setTheBill(int money){
		theBill.add(money);
	}

	public int getTheBill() {
		int sum = 0;
		for (int i = 0; i < theBill.size(); i++){
			sum += (Integer)theBill.get(i);
		}
	     return sum;
	}	
}

package com.example.demo;

import java.util.List;

public interface employeService {
	
	void getInfo(employee ss);
	
	List<employee> getallemployee();

	void delemp(int id);
	
	employee getsinglemp(int id);
	

}


package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class employeeDao implements employeService {

    @Autowired
    employeeRepo sr;  // Fixed the variable name

    @Override
    public void getInfo(employee ss) {
        sr.save(ss);
    }

    @Override
    public List<employee> getallemployee() {
        return sr.findAll();
    }

    @Override
    public void delemp(int id) {
        sr.deleteById(id);  // Fixed the repository variable name
    }

	@Override
	public employee getsinglemp(int id) {
		
		employee e=sr.getById(id);
				return e;
	}
}

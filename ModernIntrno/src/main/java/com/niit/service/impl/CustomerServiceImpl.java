package com.niit.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao customerDao;

	public boolean registerCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.registerCustomer(customer);
	}

	

}

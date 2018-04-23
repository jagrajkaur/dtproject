package com.niit.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerDao;
import com.niit.model.Authorization;
import com.niit.model.Customer;
import com.niit.model.User;


@Transactional
@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
	SessionFactory sessionfactory;

	public boolean registerCustomer(Customer customer) {
		try {
			Session session = sessionfactory.openSession();
			 customer.getBillingAddress().setCustomer(customer);
		        customer.getShippingAddress().setCustomer(customer);
		        //System.out.println("Customer Name = "+customer.getName());
		        session.saveOrUpdate(customer);
		        session.saveOrUpdate(customer.getBillingAddress());
		        session.saveOrUpdate(customer.getShippingAddress());
			User user = new User();
			user.setUsername(customer.getUsername());
			user.setPassword(customer.getPassword());
			user.setEnabled(true);
			Authorization newAuthorities = new Authorization();
	        newAuthorities.setUsername(customer.getUsername());
	        newAuthorities.setRoleName("ROLE_USER");
			session.saveOrUpdate(newAuthorities);
			session.saveOrUpdate(user);
			session.flush();
			session.close();
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
		
		
		
	}

	public Customer getCustomerById(int customerId) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		return (Customer) session.get(Customer.class, customerId);
	}
}

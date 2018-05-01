package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.BillingAddress;
import com.niit.model.Customer;
import com.niit.model.ShippingAddress;
import com.niit.service.CustomerService;

@Controller
public class CustomerController {

	//private static final String customer = null;
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value="/registerCustomer")
	public String viewRegisterCustomerPage(Model model) 
	{
		Customer customer = new Customer();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		model.addAttribute("customer",customer);
		return "registerCustomer";	
	}
	
	@RequestMapping(value="/registerCustomer", method = RequestMethod.POST)
	public String registerCustomer(@ModelAttribute("customer") Customer customer)
	{
		boolean flag = customerService.registerCustomer(customer);
		if(flag==true)
		{
			customer.setEnabled(true);
			return "index";
		}
		else return "registerCustomer";
		
		
		/*if(result.hasErrors())
		{
			return "registerCustomer";
		}
		boolean res = customerService.registerCustomer(customer);
		if(res)
		{
			return "login";
		}
		else
		{
			System.out.println("Register Customer Details....");
			return "registerCustomer";
		}
		*/
	}
}

package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.model.User;
import com.niit.service.CustomerService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	 @Autowired
	 private CustomerService customerService;

	 @RequestMapping
	    public String getCart(@AuthenticationPrincipal User activeUser){
	        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
	        int cartId = customer.getCart().getCartId();

	        return "redirect:/cart/" + cartId;
	    }

	    @RequestMapping("/{cartId}")
	    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
	        model.addAttribute("cartId", cartId);

	        return "cart";
	    }
}

package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productservice;
	
	@RequestMapping("/allProducts")
	public String getAllProducts(Model model)
	{
		List<Product> allProducts = productservice.getAllProducts();
		model.addAttribute("products", allProducts);
		return "productList";
		
	}
	
	@RequestMapping("/viewProduct/{pid}")
	public String getProductById(@PathVariable("pid") int pid, Model model )
	{
		Product product=productservice.getProductById(pid);
		model.addAttribute("product",product);
		return "viewProduct";
		
	}

}

package com.niit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao productDao;
	
	public Product getProductById(int pid) {
		// TODO Auto-generated method stub
		return productDao.getProductById(pid);
	}

	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDao.getAllProducts();
	}

	public boolean addProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.addProduct(product);
	}

	public boolean deleteProduct(Product product) {
		return productDao.deleteProduct(product);
		
	}

	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.saveOrUpdateProduct(product);
		
	}

	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.saveOrUpdateProduct(product);
		
	}
	
}

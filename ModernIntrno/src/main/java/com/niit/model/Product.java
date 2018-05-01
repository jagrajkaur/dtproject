package com.niit.model;


import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	 
	private int pid; 
	
	@NotEmpty(message="ProductName cannot be blank(*)")
	private String name;
	
	@NotEmpty(message="Product description is required(*)")
	private String description;
	
	@Min(value=1,message="minimum quantity must be 1")
	private int quantity;
	
	@Min(value=1,message="minimum price must be 1")
	private double price;
	
	@Transient
	private MultipartFile image;
	
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<CartItem> cartItemList;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	
	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public List<CartItem> getCartItemList() {
		return cartItemList;
	}

	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
		
	

}

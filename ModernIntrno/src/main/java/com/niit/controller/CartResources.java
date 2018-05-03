package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.service.*;

@Controller
@RequestMapping("/rest/cart")
public class CartResources {

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;

	@RequestMapping("/{cartId}")
	public ResponseEntity<Cart> getCartById(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartService.getCartById(cartId);
		//System.out.println("Customer Name = "+);
		System.out.println(cart.getCartItems().get(0).getQuantity());
		System.out.println("cart items size :" + cart.getCartItems().size());
		display(cart.getCartItems());
		return new ResponseEntity<Cart>(cart,HttpStatus.OK);
	}
	
	private void display(List<CartItem> cartItems )
	{
		for(CartItem c:cartItems)
		{
			System.out.println("Cart Item Id" +c.getCartItemId());
			System.out.println("Product Name "+c.getProduct().getName());
		}
	}

	@RequestMapping(value = "/add/{pid}", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value = "pid") int pid, Principal principal) {

		Customer customer = customerService.getCustomerByUsername(principal.getName());
		System.out.println("Customer = "+customer.getName());
		Cart cart = customer.getCart();
		System.out.println("Product Details = " + cart.getCartId());
		Product product = productService.getProductById(pid);
		
		try {
			List<CartItem> cartItems = cart.getCartItems();
			//System.out.println(cartItems);

			for (int i = 0; i < cartItems.size(); i++) {
				if (product.getPid() == cartItems.get(i).getProduct().getPid()) {
					CartItem cartItem = cartItems.get(i);
					cartItem.setQuantity(cartItem.getQuantity() + 1);
					cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
					cartItemService.addCartItem(cartItem);

					return;
				}
			}

			CartItem cartItem = new CartItem();
			cartItem.setProduct(product);
			cartItem.setQuantity(1);
			cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
			cartItem.setCart(cart);

			cartItemService.addCartItem(cartItem);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	@RequestMapping(value = "/remove/{pid}", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable(value = "pid") int pid) {
		CartItem cartItem = cartItemService.getCartItemByProductId(pid);
		cartItemService.removeCartItem(cartItem);

	}

	@RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void clearCart(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartService.getCartById(cartId);
		cartItemService.removeAllCartItems(cart);
	}

	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	public void handleClientErrors(Exception ex) {

	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
	public void handleServerErrors(Exception ex) {

	}

}

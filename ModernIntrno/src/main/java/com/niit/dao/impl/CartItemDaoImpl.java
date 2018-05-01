package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;



@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {
	
	@Autowired
    private SessionFactory sessionFactory;

	public void addCartItem(CartItem cartItem) {
		try {
		Session session = sessionFactory.openSession();
		 session.saveOrUpdate(cartItem);
		 session.flush();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public void removeCartItem(CartItem cartItem) {
		try {
		Session session = sessionFactory.openSession();
        session.delete(cartItem);
        session.flush();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public void removeAllCartItems(Cart cart) {
		try {
		List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            removeCartItem(item);
        }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

	public CartItem getCartItemByProductId(int productId) {
		try {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();
		return (CartItem) query.uniqueResult();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}

}

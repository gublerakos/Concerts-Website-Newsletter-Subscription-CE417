package com.example.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.example.model.*;
import com.example.utl.*;
//import com.example.web.*;

public class UserDao {
	
	/**
	 * Save User
	 * @param user
	 */
	public void saveUser(User user){
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.save(user);
			// commit transaction
			transaction.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Validate user account
	 * @param session
	 * @return
	 */
	public boolean validateUser(String username, String password) {
		Transaction transaction = null;
		 User user = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {		    
		     // start a transaction
		     transaction = session.beginTransaction();
		     // get an user object
		      user = (User) session.createQuery("FROM User U WHERE U.username = :username").setParameter("username", username).uniqueResult();
		     
		      //if user password and name correct
		      if (user != null && user.getPassword().equals(password)) {
		    	  return true;
		      }
		   return false;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	    public Long doInHibernate(Session session) {
	        return (Long) session.createQuery("select count(newUser.username) from users someEntity ...").uniqueResult();
	    }
	/**
	 * Update user
	 * @param user
	 */
	public void updateProduct(User user) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.update(user);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}

	/**
	 * Delete product
	 * @param barcode
	 */
	public void deleteProduct(String username) {

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

			// Delete a product object
			User user = session.get(User.class, username);
			// commit transaction
			transaction.commit();
		} catch (Exception e){
			System.out.println("Exception in get");
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}

	/**
	 * Get product By ID
	 * @param barcode
	 * @return
	 */
	public User getUser(String username) {

		Transaction transaction = null;
		User user = null;
		try (Session session = (HibernateUtil.getSessionFactory()).openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// get an product object
			user = session.get(User.class, username);
			// commit transaction
			
			if(user == null) {
				transaction.commit();
				System.out.println("doesnt exist:");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	/**
	 * Get all products
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {

		Transaction transaction = null;
		List<User> listOfUsers = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// get a user object
			
			listOfUsers = session.createQuery("from users").getResultList();
			
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return listOfUsers;
	}
}

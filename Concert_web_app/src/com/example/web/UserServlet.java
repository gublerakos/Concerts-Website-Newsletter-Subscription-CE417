package com.example.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.dao.UserDao;
import com.example.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	
	public void init() {
		userDao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
					logoutUser(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/login":
				checklogin(request, response);
				break;
			case "/sign-up":
				insertUser(request, response);
				break;
			case "/logout":
				logoutUser(request, response);
				break;
			default:
				insertUser(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("product-form.jsp");
		dispatcher.forward(request, response);
	}

	private void checklogin(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		String destPage = "login.jsp";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User newUser = new User();
		newUser.setUsername(username);
		newUser.setPassword(password);
		
		boolean temp = userDao.validateUser(username, password);//check whether login info correct
		if(temp == true) {//if corect, login
			String message = "";
			HttpSession session = request.getSession();
            session.setAttribute("username", username);
            destPage = "index.jsp";//phgainei sto homepage
            System.out.println("user already in db "+username+" "+password);
		}
		else {
			//request.setAttribute("styles", null);
			String message = "Invalid email or password! Try again";
			 System.out.println("oops");
			request.setAttribute("message", message);
		}
		try {
			System.out.println("going to "+destPage);
			RequestDispatcher view = request.getRequestDispatcher(destPage);
			view.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("name "+username+"pass "+password);
		User newUser = new User();
		newUser.setUsername(username);
		newUser.setPassword(password);
		String destPage = "login.jsp";
		
		User temp = userDao.getUser(username);//check whether login info correct
		if(temp == null) {//if user doesnt exist, create new account
			String message = "";
			HttpSession session = request.getSession();
			
			userDao.saveUser(newUser);
			System.out.println("User sign up  doesnt exist....creating....");
			session.setAttribute("username", username);
			destPage = "login-success.jsp";
			request.setAttribute("styles", newUser);
		}
		else {
			//newProduct.setName("***ERROR***");
			String message = "Username already exists! Try again";
			request.setAttribute("message", message);
		}
		try {
			RequestDispatcher view = request.getRequestDispatcher(destPage);
			view.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void logoutUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		HttpSession session = request.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		try {
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

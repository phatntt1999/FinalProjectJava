package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Account;
import model.bean.Service;
import model.bo.AddNewServiceBO;
import model.bo.CheckLoginBO;
import model.bo.ShowListAccountBO;

/**
 * Servlet implementation class CheckLoginServlet
 */
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		CheckLoginBO checkLoginBO = new CheckLoginBO();

		final int INVALID_ACCOUNT = 0;
		final int USER = 1;
		final int ORGANIZER = 2;
		final int ADMIN = 3;
		
		String accountInfor = null;
		HttpSession session = request.getSession();
		
		RequestDispatcher rd = null;
		accountInfor = userName;
		
		
		if(checkLoginBO.getAccountRole(userName, passWord) == INVALID_ACCOUNT)	{
			rd = request.getRequestDispatcher("login-form.jsp?error=2");
		} //Invalid account
		else if(checkLoginBO.getAccountRole(userName, passWord) == USER)	{
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", USER);
			rd = request.getRequestDispatcher("welcomeUser.jsp");
		} //User role
		else if (checkLoginBO.getAccountRole(userName, passWord) == ORGANIZER){
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", ORGANIZER);
			rd = request.getRequestDispatcher("welcomeOrganizer.jsp");
		} //Organizer role
		else {
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", ADMIN);
			rd = request.getRequestDispatcher("ShowDataAdminServlet");
		} //Admin role
		
		rd.forward(request, response);
	}

}

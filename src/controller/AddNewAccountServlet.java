package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.AddNewAccountBO;
import model.bo.AddNewAccountInforBO;
import model.bo.AddNewServiceBO;

/**
 * Servlet implementation class AddNewAccountServlet
 */
public class AddNewAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accUserName = request.getParameter("accUserName");
		String accPassWord = request.getParameter("accPassWord");
		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String role = request.getParameter("role");
		
		RequestDispatcher rd = null;
		
		if("0".equals(role)) {
			rd = request.getRequestDispatcher("login-form.jsp?message=6");
			rd.forward(request, response);
		}
		else {
			try {
				AddNewAccountBO addNewAccountBO = new AddNewAccountBO();
				AddNewAccountInforBO addNewAccountInforBO = new AddNewAccountInforBO();
				
				String returnedMessage = addNewAccountBO.addNewAccount(accUserName, accPassWord, role);
				String returnedInforMessage = addNewAccountInforBO.addNewAccountInfor(role, name, phonenumber, accUserName);
				
				if ("No error.".equals(returnedMessage) && "No error.".equals(returnedInforMessage)) { 
					// Successful
					rd = request.getRequestDispatcher("login-form.jsp?message=1");

				} else if ("Duplicate ID Error.".equals(returnedMessage) || 
						"Duplicate ID Error.".equals(returnedInforMessage)) {
					// Duplicate ID

					rd = request.getRequestDispatcher("login-form.jsp?message=2");

				} else if ("Required Fields error.".equals(returnedMessage) ||
						"Required Fields error.".equals(returnedInforMessage)) {
					// Required Fields error.

					rd = request.getRequestDispatcher("login-form.jsp?message=3");
				} else

				if ("Invalid DGTK error.".equals(returnedMessage) ||
						"Invalid DGTK error.".equals(returnedInforMessage)) {
					rd = request.getRequestDispatcher("login-form.jsp?message=4");
				} else {
					// No Identify Error

					rd = request.getRequestDispatcher("login-form.jsp?message=5");
				}
				rd.forward(request, response);
			} catch (Exception e) {
				
				System.out.println(e);
				
			}
		}
		
		
	}

}

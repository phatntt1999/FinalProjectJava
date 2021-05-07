package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.AddNewServiceBO;

/**
 * Servlet implementation class AddNewServiceServlet
 */
public class AddNewServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewServiceServlet() {
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
		String nameEvent = request.getParameter("nameEvent");
		String noOfParticipant = request.getParameter("no-of-participants");
		String description = request.getParameter("description");
		String area = request.getParameter("area");
		
		HttpSession session = request.getSession();
		try {
			String userName = (String) session.getAttribute("userName");
			AddNewServiceBO addNewServiceBO = new AddNewServiceBO();

			String returnedMessage = addNewServiceBO.addNewService(userName, nameEvent, noOfParticipant, description,
					area);
			RequestDispatcher rd = null;
			
			if ("No error.".equals(returnedMessage)) { // Successful

				rd = request.getRequestDispatcher("ShowHomepageServlet?message=2");

			} else if ("Duplicate ID Error.".equals(returnedMessage)) {
				// Duplicate IDService

				rd = request.getRequestDispatcher("ShowHomepageServlet?message=1");

			} else if ("Required Fields error.".equals(returnedMessage)) {
				// Required Fields error.

				rd = request.getRequestDispatcher("ShowHomepageServlet?message=3");
			} else

			if ("Invalid DGTK error.".equals(returnedMessage)) {
				rd = request.getRequestDispatcher("ShowHomepageServlet?message=4");
			} else {
				// No Identify Error

				rd = request.getRequestDispatcher("ShowHomepageServlet?message=2");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}

package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Service;
import model.bo.CreateEventOrderBO;
import model.bo.ShowDetailServiceBO;

/**
 * Servlet implementation class CreateEventOrderServlet
 */
public class CreateEventOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEventOrderServlet() {
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
		String price = request.getParameter("price");
		String dateHolding = request.getParameter("dateHolding");
		String serId = request.getParameter("serId");
		
		ShowDetailServiceBO showDetailServiceBO = new ShowDetailServiceBO();
		ArrayList<Service> returnedList = showDetailServiceBO.showDetailService(serId);
		
		HttpSession session = request.getSession();
		try {
			String cusId = (String)session.getAttribute("userName");
			
			CreateEventOrderBO createEventOrderBO = new CreateEventOrderBO();
			String returnedMessage = createEventOrderBO.createEventOrder(cusId, price, dateHolding, serId);
			String lastestIdOrder = createEventOrderBO.getLastestIdEventOrder();
			RequestDispatcher rd = null;
			
			if ("No error.".equals(returnedMessage)) { // Successful
				request.setAttribute("DetailService", returnedList);
				request.setAttribute("LastestIdOrder", lastestIdOrder);
				rd = request.getRequestDispatcher("index.jsp?message=2");

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

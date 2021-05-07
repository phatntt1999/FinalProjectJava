package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Service;
import model.bo.ShowDetailServiceBO;

/**
 * Servlet implementation class SubmitDataForPaymentServlet
 */
public class SubmitDataForPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitDataForPaymentServlet() {
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
		String serId = request.getParameter("serId");
		String dateHolding = request.getParameter("dateHolding");
		
		ShowDetailServiceBO showDetailServiceBO = new ShowDetailServiceBO();
		ArrayList<Service> returnedList = showDetailServiceBO.showDetailService(serId);
		request.setAttribute("detailService", returnedList);
		request.setAttribute("dateHolding", dateHolding);
		RequestDispatcher rd = null;
		rd = request
				.getRequestDispatcher("Payment.jsp");
		rd.forward(request, response);
	}

}

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
import model.bo.SearchServiceBO;
import model.bo.ShowDetailServiceBO;

/**
 * Servlet implementation class ShowDetailServiceServlet
 */
public class ShowDetailServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDetailServiceServlet() {
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
		HttpSession session = request.getSession();
		if (session.getAttribute("accountInfor") == null) {
			response.sendRedirect("login.jsp?error=1");
		} else {
			String serId = request.getParameter("serId");
			String dateHolding = request.getParameter("dateHolding");
			ShowDetailServiceBO showDetailServiceBO = new ShowDetailServiceBO();
			ArrayList<Service> returnedList = showDetailServiceBO.showDetailService(serId);
			request.setAttribute("detailService", returnedList);
			request.setAttribute("dateHolding", dateHolding);
			
			RequestDispatcher rd = null;
			rd = request
					.getRequestDispatcher("DetailService.jsp");
			rd.forward(request, response);
		}
	}

}

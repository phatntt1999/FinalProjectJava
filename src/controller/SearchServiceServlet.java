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


/**
 * Servlet implementation class SearchServiceServlet
 */
public class SearchServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServiceServlet() {
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
		String searchLocation = request.getParameter("SearchLocation");
		String noOfParticipant = request.getParameter("no-of-participants");
		String dateHoldingString = request.getParameter("DateHolding");
		
		SearchServiceBO searchServiceBO = new SearchServiceBO();
		
		System.out.println("searchText= " + searchLocation);
		System.out.println("noOfParticipant= " + noOfParticipant);
		System.out.println("dateHoding= " + dateHoldingString);
		ArrayList<Service> ListService = searchServiceBO.getListService(searchLocation, noOfParticipant);
		
		request.setAttribute("searchLocation",searchLocation);
		request.setAttribute("noOfParticipant",noOfParticipant);
		request.setAttribute("dateHoding", dateHoldingString);
		request.setAttribute("ListService",ListService);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("ListServices.jsp");
		rd.forward(request, response);
	}

}

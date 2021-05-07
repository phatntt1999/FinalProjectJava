package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Account;
import model.bean.Service;
import model.bo.ShowListAccountBO;
import model.bo.ShowListServiceBO;

/**
 * Servlet implementation class ShowHomepageServlet
 */
public class ShowHomepageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowHomepageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShowListServiceBO showListServiceBO = new ShowListServiceBO();

		ArrayList<Service> ListService = showListServiceBO.getListService();
		
		RequestDispatcher rd = null;
		
		request.setAttribute("ListService", ListService);
		rd = request.getRequestDispatcher("welcomeOrganizer.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}

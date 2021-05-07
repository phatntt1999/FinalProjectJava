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
 * Servlet implementation class ShowDataAdminServlet
 */
public class ShowDataAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowDataAdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ShowListAccountBO showListAccountBO = new ShowListAccountBO();
		ShowListServiceBO showListServiceBO = new ShowListServiceBO();

		ArrayList<Account> ListAccount = showListAccountBO.getListAccount();
		ArrayList<Service> ListService = showListServiceBO.getListService();
		
		RequestDispatcher rd = null;
		
		request.setAttribute("ListAccount", ListAccount);
		request.setAttribute("ListService", ListService);
		rd = request.getRequestDispatcher("welcomeAdmin.jsp");
		rd.forward(request, response);
	}

}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.DeleteAccountBO;

/**
 * Servlet implementation class DeleteServiceServlet
 */
public class DeleteServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServiceServlet() {
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
		String SerId = request.getParameter("SerId");

		DeleteAccountBO deleteServiceBO = new DeleteAccountBO();
		deleteServiceBO.deleteService(SerId);
		HttpSession session = request.getSession();
		if("admin@gmail.com".equals(session.getAttribute("userName"))) {
			response.sendRedirect("ShowDataAdminServlet?message=1");
		}
		else {
			response.sendRedirect("GetEventOrganizerServlet?message=1");
		}
		
		
	}

}

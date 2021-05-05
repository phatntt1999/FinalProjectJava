package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.CheckLoginBO;

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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		CheckLoginBO checkLoginBO = new CheckLoginBO();
//		AvatarUserBO avatarUserBO = new AvatarUserBO();
		
		final int INVALID_ACCOUNT = 0;
		final int USER = 1;
		final int ORGANIZER = 2;
		
		String accountInfor = null;
		HttpSession session = request.getSession();
		
		RequestDispatcher rd = null;
		accountInfor = "Welcome! " + userName;
		
//		String avatar = (String)avatarUserBO.getAvatarUser(userName);
		
		if(checkLoginBO.getAccountRole(userName, passWord) == INVALID_ACCOUNT)	{
			rd = request.getRequestDispatcher("login-form.jsp?error=2");
		} //Invalid account
		else if(checkLoginBO.getAccountRole(userName, passWord) == USER)	{
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", USER);
			//session.setAttribute("avatar", avatar);
			rd = request.getRequestDispatcher("welcomeUser.jsp");
		} //User role
		else if (checkLoginBO.getAccountRole(userName, passWord) == ORGANIZER){
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", ORGANIZER);
			//session.setAttribute("avatar", avatar);
			rd = request.getRequestDispatcher("welcomeOrganizer.jsp");
		} //Organizer role
		else {
			session.setAttribute("accountInfor", accountInfor);
			session.setAttribute("userName", userName);
			session.setAttribute("role", USER);
			//session.setAttribute("avatar", avatar);
			rd = request.getRequestDispatcher("welcomeAdmin.jsp");
		} //Admin role
		
		rd.forward(request, response);
	}

}

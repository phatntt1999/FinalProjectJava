package model.bo;

import model.dao.CheckLoginDAO;

public class CheckLoginBO {

	public int getAccountRole(String userName, String passWord) {
		// TODO Auto-generated method stub
		CheckLoginDAO checkLoginDAO = new CheckLoginDAO();
		return checkLoginDAO.getAccountRole(userName, passWord);
		
	}

}

package model.bo;

import model.dao.AddNewAccountDAO;

public class AddNewAccountBO {

	public String addNewAccount(String accUserName, String accPassWord, String role) {
		AddNewAccountDAO addNewAccountDAO = new AddNewAccountDAO(); 
		return addNewAccountDAO.addNewAccount(accUserName, accPassWord, role);
	}

}

package model.bo;

import java.util.ArrayList;

import model.bean.Account;
import model.dao.ShowListAccountDAO;

public class ShowListAccountBO {
	
	ShowListAccountDAO showListAccountDAO = new ShowListAccountDAO();

	public ArrayList<Account> getListAccount() {
		ArrayList<Account> returnedList = showListAccountDAO.getListAccount();
		return returnedList;
	}

}

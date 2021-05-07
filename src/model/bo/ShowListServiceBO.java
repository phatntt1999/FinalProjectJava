package model.bo;

import java.util.ArrayList;

import model.bean.Service;
import model.dao.ShowListServiceDAO;

public class ShowListServiceBO {
	ShowListServiceDAO showListServiceDAO = new ShowListServiceDAO();
	
	public ArrayList<Service> getListService() {
		return showListServiceDAO.getListService();
	}

}

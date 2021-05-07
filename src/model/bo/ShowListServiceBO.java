package model.bo;

import java.util.ArrayList;

import model.bean.Service;
import model.dao.AddNewServiceDAO;
import model.dao.ShowListServiceDAO;

public class ShowListServiceBO {
	ShowListServiceDAO showListServiceDAO = new ShowListServiceDAO();
	
	public ArrayList<Service> getListService() {
		return showListServiceDAO.getListService();
	}

	public ArrayList<Service> getListService(String userName) {
		// TODO Auto-generated method stub
		String idOrganizer = null;
		AddNewServiceDAO addNewServiceDAO = new AddNewServiceDAO();
		
		//Get the IdOrganizer through userName in session
		idOrganizer = addNewServiceDAO.getIdOrganizer(userName);
		
		
		return showListServiceDAO.getListService(idOrganizer);
	}

	public ArrayList<Service> getAllService() {
		return showListServiceDAO.getAllService();
	}

}

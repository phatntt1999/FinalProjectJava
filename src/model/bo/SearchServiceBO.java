package model.bo;

import java.util.ArrayList;

import model.bean.Service;
import model.dao.SearchServiceDAO;

public class SearchServiceBO {
	SearchServiceDAO searchSeviceDAO = new SearchServiceDAO();

	public ArrayList<Service> getListService(String searchLocation, String noOfParticipant) {
		// TODO Auto-generated method stub
		return searchSeviceDAO.getListService(searchLocation, noOfParticipant);
	}
	
	public ArrayList<Service> getListService() {
		// TODO Auto-generated method stub
		return searchSeviceDAO.getListService();
	}
	
	
}

package model.bo;

import java.util.ArrayList;

import model.bean.Service;
import model.dao.ShowDetailServiceDAO;

public class ShowDetailServiceBO {
	ShowDetailServiceDAO showDetailServiceDAO = new ShowDetailServiceDAO();
	
	public ArrayList<Service> showDetailService(String serId) {
		// TODO Auto-generated method stub
		return showDetailServiceDAO.showDetailService(serId);
	}

}

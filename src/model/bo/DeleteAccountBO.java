package model.bo;

import model.dao.DeleteAccountDAO;

public class DeleteAccountBO {

	public void deleteAccount(String accId) {
		DeleteAccountDAO deleteAccountDAO = new DeleteAccountDAO();
		deleteAccountDAO.deleteAccount(accId);
	}
	
	public void deleteService(String serId) {
		DeleteAccountDAO deleteServiceDAO = new DeleteAccountDAO();
		deleteServiceDAO.deleteService(serId);
	}

}

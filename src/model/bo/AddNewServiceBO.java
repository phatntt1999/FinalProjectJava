package model.bo;

import common.StringCommon;
import model.dao.AddNewServiceDAO;

public class AddNewServiceBO {
	
	AddNewServiceDAO addNewServiceDAO = new AddNewServiceDAO();
	
	String returnedString = null;
	String lastestIdService = null;

	public String addNewService(String userName, String nameEvent, String noOfParticipant, String description, String area) {
		// Loop 10 times to handle the error
		for (int i = 1; i <= 10; i++) {
			// Get lastest idService in DB
			lastestIdService = addNewServiceDAO.getLastestIdService();

			if (lastestIdService == null) {
				lastestIdService = "00001";
			} else {
				// Using defined function in Common (StringCommon.java)
				long orderNumber = Long.valueOf(lastestIdService);
				orderNumber++;
				lastestIdService = StringCommon.convertNumberToString(orderNumber, 5);
			}
			
			String idOrganizer = addNewServiceDAO.getIdOrganizer(userName);
			//Put new IdService into addNewServiceDAO.addNewService
			String returnedMessage = addNewServiceDAO.insertArticle(lastestIdService, idOrganizer, nameEvent, noOfParticipant, description, area);

			if ("Duplicate ID Error.".contentEquals(returnedMessage)) {
				returnedString = "Duplicate ID Error.";
				continue;
			} else if ("No error.".equals(returnedMessage)) {
				returnedString = "No error.";
				break;
			}
		}
		return returnedString;
	}
	
}

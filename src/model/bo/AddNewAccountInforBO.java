package model.bo;

import common.StringCommon;
import model.dao.AddNewOrganizerDAO;
import model.dao.AddNewUserDAO;

public class AddNewAccountInforBO {

	public String addNewAccountInfor(String role, String name, String phonenumber, String accUserName) {
		String lastestIdCustomer = null;
		String lastestIdOrganizer = null;
		String returnedString = null;
		
		AddNewOrganizerDAO addNewOrganizerDAO = new AddNewOrganizerDAO();
		AddNewUserDAO addNewUserDAO = new AddNewUserDAO();
		
		if ("organizer".equals(role)) {
			// Loop 10 times to handle the error
			for (int i = 1; i <= 10; i++) {
				// Get lastest idService in DB
				lastestIdOrganizer = addNewOrganizerDAO.getLastestIdOrganizer();

				if (lastestIdOrganizer == null) {
					lastestIdOrganizer = "00001";
				} else {
					// Using defined function in Common (StringCommon.java)
					long orderNumber = Long.valueOf(lastestIdOrganizer);
					orderNumber++;
					lastestIdOrganizer = StringCommon.convertNumberToString(orderNumber, 5);
				}
				
				//Put new IdService into addNewUserDAO.addNewService
				String returnedMessage = addNewOrganizerDAO.addNewOrganizer(lastestIdOrganizer, name, phonenumber, accUserName);

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
		else {
			// Loop 10 times to handle the error
			for (int i = 1; i <= 10; i++) {
				// Get lastest idService in DB
				lastestIdCustomer = addNewUserDAO.getLastestIdCustomer();

				if (lastestIdCustomer == null) {
					lastestIdCustomer = "00001";
				} else {
					// Using defined function in Common (StringCommon.java)
					long orderNumber = Long.valueOf(lastestIdCustomer);
					orderNumber++;
					lastestIdCustomer = StringCommon.convertNumberToString(orderNumber, 5);
				}
				
				//Put new IdService into addNewUserDAO.addNewService
				String returnedMessage = addNewUserDAO.addNewUser(lastestIdCustomer, name, phonenumber, accUserName);

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

}

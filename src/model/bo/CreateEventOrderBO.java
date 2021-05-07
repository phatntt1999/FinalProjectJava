package model.bo;

import common.StringCommon;
import model.dao.AddNewServiceDAO;
import model.dao.CreateEventOrderDAO;

public class CreateEventOrderBO {
	String lastestIdEventOrder = null;
	String returnedString = null;
	
	CreateEventOrderDAO createEventOrderDAO = new CreateEventOrderDAO();
	
	public String createEventOrder(String cusId, String price, String dateHolding, String serId) {
		// Loop 10 times to handle the error
				for (int i = 1; i <= 10; i++) {
					lastestIdEventOrder = getLastestIdEventOrder();
					
					//Get the idCustomer through userName in session
					String idCustomer = createEventOrderDAO.getIdCustomer(cusId);
					
					//Put new IdService into addNewServiceDAO.addNewService
					String returnedMessage = 
							createEventOrderDAO.insertArticle(lastestIdEventOrder, serId, dateHolding, price, idCustomer);

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

	public String getLastestIdEventOrder() {
		String lastestId = null;
		// Get lastest idService in DB
		lastestId = createEventOrderDAO.getlastestIdEventOrder();

		if (lastestId == null) {
			lastestId = "0000001";
		} else {
			// Using defined function in Common (StringCommon.java)
			long orderNumber = Long.valueOf(lastestId);
			orderNumber++;
			lastestId = StringCommon.convertNumberToString(orderNumber, 7);
		}
		return lastestId;
	}

}

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddNewUserDAO extends BaseDAO {
	public String getLastestIdCustomer() {

		String lastestIdCustomer = null;

		Connection connection = getConnection();
		String sql = "SELECT * FROM Customer where IdCustomer = (select max(IdCustomer) from Customer)";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				lastestIdCustomer = rs.getString("IdCustomer");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return lastestIdCustomer;
	}
	
	public String addNewUser(String lastestIdCustomer,String name, String phonenumber, String accUserName) {
		Connection connection = getConnection();
		String sql = "INSERT INTO Customer \r\n" + 
				"(IdCustomer, NameUser, PhoneNumber, AccUserName)\r\n" + 
				"VALUES\r\n" + 
				"(?,?,?,?);";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, lastestIdCustomer);
			pstmt.setString(2, name);
			pstmt.setString(3, phonenumber);
			pstmt.setString(4, accUserName);
		
			int x = pstmt.executeUpdate();
			System.out.println("Inserted " + x + " record into Customer table.");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			String errorMessage = e.getMessage();
			
			if (errorMessage != null && errorMessage.contains("Violation of PRIMARY KEY")) {
				System.out.print(errorMessage);
				return "Duplicate ID Error.";
			}
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return "No error.";
	}

}

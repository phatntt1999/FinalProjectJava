package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddNewAccountDAO extends BaseDAO {

	public String addNewAccount(String accUserName, String accPassWord, String role) {
		Connection connection = getConnection();
		String sql = "INSERT INTO Account\r\n" + 
				"(AccUserName, RoleKey, AccPassWord)\r\n" + 
				"VALUES\r\n" + 
				"(?,?,?);";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, accUserName);
			pstmt.setString(2, role);
			pstmt.setString(3, accPassWord);
		
			int x = pstmt.executeUpdate();
			System.out.println("Inserted " + x + " record.");
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

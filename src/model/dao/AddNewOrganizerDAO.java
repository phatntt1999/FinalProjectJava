package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddNewOrganizerDAO extends BaseDAO {

	public String addNewOrganizer(String lastestIdOrganizer, String name, String phonenumber, String accUserName) {
		Connection connection = getConnection();
		String sql = "INSERT INTO Organizer\r\n" + 
				"(IdOrganizer, NameOrganizer, PhoneNumber, AccUserName)\r\n" + 
				"VALUES\r\n" + 
				"(?,?,?,?);";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, lastestIdOrganizer);
			pstmt.setString(2, name);
			pstmt.setString(3, phonenumber);
			pstmt.setString(4, accUserName);
		
			int x = pstmt.executeUpdate();
			
			System.out.println("Inserted " + x + " record into Organizer table.");
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

	public String getLastestIdOrganizer() {
		String lastestIdOrganizer = null;

		Connection connection = getConnection();
		String sql = "SELECT * FROM Organizer where IdOrganizer = (select max(IdOrganizer) from Organizer)";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				lastestIdOrganizer = rs.getString("IdOrganizer");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return lastestIdOrganizer;
	}

}

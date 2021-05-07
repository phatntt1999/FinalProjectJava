package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddNewServiceDAO extends BaseDAO {
	public String getLastestIdService() {

		String lastestIdService = null;

		Connection connection = getConnection();
		String sql = "SELECT * FROM EventService where IdService = (select max(IdService) from EventService)";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				lastestIdService = rs.getString("IdService");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return lastestIdService;
	}
	
	public String getIdOrganizer(String userName) {
		String idOrganizer = null;
		Connection connection = getConnection();
		String sql = "select IdOrganizer from Organizer\r\n" + 
				"inner join Account\r\n" + 
				"on Organizer.AccUserName = Account.AccUserName\r\n" + 
				"where Organizer.AccUserName = ?;";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, userName);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				idOrganizer = rs.getString("IdOrganizer");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return idOrganizer;
	}

	public String insertArticle(String lastestIdService, String idOrganizer, String nameEvent, String noOfParticipant,
			String description, String area) {
		Connection connection = getConnection();
		String sql = "INSERT INTO EventService\r\n" + 
				"(IdService, IdOrganizer, NameService, Activity, NumberOfPeople, AreaHolding)\r\n" + 
				"VALUES\r\n" + 
				"(?,?,?,?,?,?);";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, lastestIdService);
			pstmt.setString(2, idOrganizer);
			pstmt.setString(3, nameEvent);
			pstmt.setString(4, description);
			pstmt.setInt(5, Integer.valueOf(noOfParticipant));
			pstmt.setString(6, area);
		
			int x = pstmt.executeUpdate();
			System.out.println("Inserted " + x + " record.");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			String errorMessage = e.getMessage();
			if (errorMessage != null && errorMessage.contains("Duplicate entry")) {
				return "Duplicate ID Error.";
			}
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return "No error.";
	}

	
}

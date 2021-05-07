package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteAccountDAO extends BaseDAO{

	public void deleteAccount(String accId) {
		Connection connection = getConnection();
		String sql = "DELETE FROM Account WHERE AccUserName = ?";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, accId);
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, null);
		}
	}
	
	public void deleteService(String serId) {
		Connection connection = getConnection();
		String sql = "DELETE FROM EventService WHERE IdService = ?";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, serId);
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, null);
		}
	}

}

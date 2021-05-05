package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CheckLoginDAO extends BaseDAO{

	public int getAccountRole(String userName, String passWord) {
		Connection connection = getConnection();
		String sql = "SELECT * FROM Account WHERE AccUsername = ? AND AccPassword = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, passWord);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if ("user".equals(rs.getString("Rolekey"))) {
					return 1; // user
				} else if ("organizer".equals(rs.getString("Rolekey"))) {
					return 2; // organizer
				} else { 
					return 3; // admin
				}
			} else {
				return 0; // invalid account
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}

		return 0; // invalid account
	}

}

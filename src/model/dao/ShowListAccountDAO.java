package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Account;

public class ShowListAccountDAO extends BaseDAO {

	public ArrayList<Account> getListAccount() {
		Connection connection = getConnection();

		ArrayList<Account> returnedList = new ArrayList<Account>();
		String sql = "SELECT * FROM Account";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();

			Account item = null;

			while (rs.next()) {
				item = new Account();
				
				item.setAccUserName(rs.getString("AccUserName"));
				item.setAccPassWord(rs.getString("AccPassWord"));
				item.setRolekey(rs.getString("Rolekey"));
	
				returnedList.add(item);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return returnedList;
	}

}

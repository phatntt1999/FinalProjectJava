package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CreateEventOrderDAO extends BaseDAO {

	public String getlastestIdEventOrder() {
		String lastestIdService = null;

		Connection connection = getConnection();
		String sql = "SELECT * FROM ServiceOrder where IdOrder = (select max(IdOrder) from ServiceOrder)";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				lastestIdService = rs.getString("IdOrder");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return lastestIdService;
	}

	public String insertArticle(String lastestIdEventOrder, String serId, String dateHolding, String price,
			String cusId) {
		Connection connection = getConnection();
		String sql = "INSERT INTO ServiceOrder\r\n" + 
				"(IdOrder, Price, DateHoldingEvent, IdService, IdCustomer)\r\n" + 
				"VALUES\r\n" + 
				"(?,?,?,?,?);";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, lastestIdEventOrder);
			pstmt.setDouble(2, Double.valueOf(price));
			pstmt.setString(3, dateHolding);
			pstmt.setString(4, serId);
			pstmt.setString(5, cusId);
			
		
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

	public String getIdCustomer(String cusId) {
		String idCustomer = null;
		Connection connection = getConnection();
		String sql = "select IdCustomer from Customer\r\n" + 
				"inner join Account\r\n" + 
				"on Customer.AccUserName = Account.AccUserName\r\n" + 
				"where Customer.AccUserName = ?;";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, cusId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				idCustomer = rs.getString("IdCustomer");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return idCustomer;
	}
	
}

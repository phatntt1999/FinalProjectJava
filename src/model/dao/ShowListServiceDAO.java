package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Service;
import model.dao.BaseDAO;

public class ShowListServiceDAO extends BaseDAO {

	public ArrayList<Service> getListService() {
		Connection connection = getConnection();

		ArrayList<Service> returnedList = new ArrayList<Service>();
		String sql = "SELECT * FROM EventService ORDER BY NameService";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();

			Service item = null;

			while (rs.next()) {
				item = new Service();
				
				item.setIdService(rs.getString("IdService"));
				item.setNameService(rs.getString("NameService"));
				item.setIdOrganizer(rs.getString("IdOrganizer"));
				item.setNumberOfPeople(rs.getInt("NumberOfPeople"));
				item.setAreaHolding(rs.getString("AreaHolding"));
	
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

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Service;

public class SearchServiceDAO extends BaseDAO{

	public ArrayList<Service> getListService(String searchLocation, String noOfParticipant) {
		ArrayList<Service> returnedList = new ArrayList<Service>();
		int noOfParticipantMax = Integer.valueOf(noOfParticipant);;
		
		if(noOfParticipantMax < 50) {
			noOfParticipantMax = noOfParticipantMax + 20;
		}
		else {
			noOfParticipantMax = noOfParticipantMax + 30;
		}
		Connection connection = getConnection();
		
		String sql = "SELECT * FROM EventService\r\n" + 
				"INNER JOIN Organizer ON EventService.IdOrganizer = Organizer.IdOrganizer\r\n" + 
				"where EventService.NumberOfPeople >= ? and EventService.NumberOfPeople < ? and EventService.AreaHolding LIKE ?";		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, noOfParticipant);
			pstmt.setString(2, String.valueOf(noOfParticipantMax));
			pstmt.setString(3, "%" + searchLocation + "%" );
			
			rs = pstmt.executeQuery();
			
			Service item = null;
			
			while (rs.next()) {
				item = new Service();
				item.setIdService(rs.getString("IdService"));
				item.setNameService(rs.getString("NameService"));
				item.setNumberOfPeople(rs.getInt("NumberOfPeople"));
				item.setAreaHolding(rs.getString("areaHolding"));
				item.setPhoneNumberOrganizer(rs.getString("phoneNumberOrganizer"));
				item.setNameOrganizer(rs.getString("NameOrganizer"));
				item.setDescriptionService(rs.getString("Activity"));
				
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

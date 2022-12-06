package catalogue;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CatalogueDAO {
	private Connection conn;
	private ResultSet rs;
	
	public CatalogueDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/POS?serverTimezone=Asia/Seoul&useSSL=false";
			//String dbURL = "http://localhost:8080/api/v1/login/";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public String getDate() { //DB 현재시간 SELECT
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //DB오류출력
	}
	
	public int getNext() { //DB 순차적 순번
		String SQL = "SELECT catalogueID FROM CATALOGUE ORDER BY catalogueID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //DB오류
	}
	
	
	
	public int write(int catalogueID, int catalogueCount, String catalogueName) { //주문상세에 insert해줘야함.
		String SQL = "INSERT INTO CATALOGUE VALUE (?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, catalogueID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //DB오류
	}
	
	public ArrayList<Catalogue> getList(int catalogueID){
		String SQL = "SELECT * FROM CATALOGUE WHERE catalogueID < ? ORDER BY catalogueID DESC";
		ArrayList<Catalogue> list = new ArrayList<Catalogue>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Catalogue catalogue = new Catalogue();
				catalogue.setCatalogueID(rs.getInt(1));
				catalogue.setCatalogueName(rs.getString(2));
				catalogue.setCataloguePrice(rs.getString(3));
				catalogue.setCatalogueCount(rs.getInt(4));
				list.add(catalogue);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
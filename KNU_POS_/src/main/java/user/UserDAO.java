package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
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
	
	public int login(String userID, String userPassword, String userRole) {
		String SQL = "SELECT userPassword, role FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			System.out.println("id: " + userID);
			System.out.println("pw: " + userPassword);
			if(rs.next()) {
				System.out.println("role: " + rs.getString(2));
				if(rs.getString(1).equals(userPassword)) {
					if(rs.getString(2).equals("ADMIN")) {return 1;} //로그인 성공
					else if(rs.getString(2).equals("OWNER")) {return 2;} //로그인 성공
					return -2;
				}
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getRole());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
	
}

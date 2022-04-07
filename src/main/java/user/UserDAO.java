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
			String dbURL = "jdbc:mysql://localhost:3306/classshare";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT UserPassword FROM USER WHERE UserID = ?";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1,  userID);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
						return 1;	// 로그인 성공 시
					}
					else
						return 0;	// 비밀번호 불일치
				}
				return -1;	// 아이디가 없을 경우
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -2;	// 데이터베이스 오류
	}
	
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setNull(1, user.getUserNum());		// PRIMARY KEY가 AUTO_INCREASE라서 NULL로 입력(자동 증가)
			pstmt.setString(2, user.getUserID());
			pstmt.setString(3, user.getUserPassword());
			pstmt.setString(4, user.getUserName());
			pstmt.setString(5, user.getUserDep());
			pstmt.setString(6, user.getUserClass());
			pstmt.setString(7, user.getUserStuNum());
			
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;		// 데이터베이스 오류
	}
	
}
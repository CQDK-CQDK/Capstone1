package subject;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.concurrent.ExecutionException;
import java.util.ArrayList;

public class SubjectDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet subject;
	
		
	public SubjectDAO() {
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
	/*
	  	public ArrayList<Subject> subjectSearchAll() {
	 
		String SQL = "SELECT * FROM subject";
		ArrayList<Subject> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(SQL);
			subject = pstmt.executeQuery();
			while(subject.next()) {
				String SubClass = subject.getString("SubClass");
				String SubDep = subject.getString("SubDep");
				String SubName = subject.getString("SubName");
				String SubPoint = subject.getString("SubPoint");
				String SubTime = subject.getString("SubTime");
				String SubPro = subject.getString("SubPro");
				String SubMax = subject.getString("SubMax");
				Subject subject = new Subject(SubNum, , , , , , )
			}
		} catch (Exception e) {
			
		}
	}
	*/
	
}
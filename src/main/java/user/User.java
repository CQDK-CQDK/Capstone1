package user;

public class User {
	private int UserNum;			// PRIMARY KEY
	private String UserID;
	private String UserPassword;
	private String UserName;
	private String UserDep;
	private String UserClass;
	private String UserStuNum;
	
	public int getUserNum() {
		return UserNum;
	}
	public void setUserNum(int userNum) {
		UserNum = userNum;
	}
	
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserDep() {
		return UserDep;
	}
	public void setUserDep(String userDep) {
		UserDep = userDep;
	}
	public String getUserClass() {
		return UserClass;
	}
	public void setUserClass(String userClass) {
		UserClass = userClass;
	}
	public String getUserStuNum() {
		return UserStuNum;
	}
	public void setUserStuNum(String userStuNum) {
		UserStuNum = userStuNum;
	}
}
package user;

public class UserDTO {

	String userID;
	String userPW;

	// getter : 현재 기록된 데이터를 가져오는 것
	// setter : 데이터를 기록하는 명령어
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
}

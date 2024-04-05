package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;

// DAO = > DB와 1:1로 연동되어 실제 DB에 내용을 기록하고, DB에서 가져오는 것을 수행하는 클래스
public class UserDAO {

	// 회원가입
	public int join(String userID, String userPW) {
		String SQL = "INSERT INTO USER VALUES (? , ?)";  // ? = user가 입력한 id, pw
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL); // PreparedStatement = ? 각각에 실제 데이터를 넣어줄 수 있도록 해줌.
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			// "INSERT INTO USER VALUEW (? , ?)"; 구문을 실행해서 나온 결과를 반환
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 오류 발생 시, -1값 반환
		return -1; 
	}
	
	
}

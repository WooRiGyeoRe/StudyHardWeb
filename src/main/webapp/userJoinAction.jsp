<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>    
<%@ page import="user.UserDTO" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트 출력 -->

<%
    request.setCharacterEncoding("UTF-8");
    String userID = request.getParameter("userID"); 
    String userPW = request.getParameter("userPW");

    if(userID == null || userID.equals("") || userPW == null || userPW.equals("")) {
        PrintWriter script = response.getWriter();
        script.print("<script>");
        script.print("alert('입력이 안 된 항목이 있습니다.');");
        script.print("history.back();"); // 사용자를 원래 화면으로 되돌리기
        script.print("</script>");
        script.close(); 
        return;
    } 

    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPW);
    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.print("<script>");
        script.print("alert('회원가입에 성공했습니다.');");
        script.print("location.href = 'index.jsp';");  
        script.print("</script>");
        script.close(); 
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

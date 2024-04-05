<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 번째 페이지</title>
</head>
<body>
	Hello World!
	<!-- post방식 : 외부에 데이터가 노출X(보안성 높음) -->
	<form action="./userJoinAction.jsp" method="post">
		<input type="text" name="userID">
		<input type="text" name="uesrPW">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인사관리 퇴사처리 화면</h1>
	<form method="post" action="./delete">
	성명<input type="text" name="name">
	사원번호<input type="text" name="id">
	<input type="submit" value="삭제">
	<input type="button" value="취소" onclick="location.href='./index.jsp'">
	</form>
</body>
</html>
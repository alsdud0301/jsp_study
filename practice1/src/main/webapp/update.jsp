<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인사관리 사원정보 변경화면</h1>
	<form method="post" action="./updatePerson">
	성명<input type="text" name="name">
	사원번호<input type="text" name="id">
	소속부서<select name="dept">
		<option value="인사부"></option>
		<option value="경리부"></option>
	</select>
	직급
	<select name="duty">
		<option value="1">1급</option>
		<option value="2">2급</option>
		<option value="3">3급</option>
	</select>
	직책<input type="text" name="duty">
	연락처<input type="text" name="phone">
	<input type="submit" value="변경">
	<input type="button" onclick="location.href='./index.jsp'">
	</form>
</body>
</html>
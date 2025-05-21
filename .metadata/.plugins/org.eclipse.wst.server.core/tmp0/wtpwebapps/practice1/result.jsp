<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>직원 정보 조회 결과</h1>
	<table>
		<tr>
			<td>성명</td>
			<td>사번</td>
			<td>직급</td>
			<td>직책</td>
			<td>연락처</td>
			<td>소속부서</td>
		</tr>
		<c:forEach var="person" items="${plist}">
			<tr>
				<td>${person.name}</td>
				<td>${person.id}</td>
				<td>${person.dept}</td>
				<td>${person.position}</td>
				<td>${person.duty}</td>
				<td>${person.phone}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
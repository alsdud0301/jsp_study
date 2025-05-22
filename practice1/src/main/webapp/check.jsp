<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인사관리조회화면</h1>
	<form method="post" id="frm">
		<input type="radio" id="radio_check_id"> 
		<span>사원번호로 조회</span>
		<span><input type="text" class="check_id" name="id"></span>
		<span>부서명으로 조회</span>
		<input type="radio" id="radio_check_dept">
		<span>
			<select name="dept">
				<option value="인사부">인사부</option>
				<option value="경리부">경리부</option>
			</select>
		</span>
		<div>
			<input type="submit" value="조회"> <input type="button"
				value="취소">
		</div>
	</form>
	<script>
	const frm = document.getElementById('frm');
	 const check_id = document.getElementById('radio_check_id');
     const check_dept = document.getElementById('radio_check_dept');

     // 라디오 버튼 변경 시 폼 action 변경하는 함수
     function updateFormAction() {
         if (check_id.checked) {
             frm.action = './result'; // 사원번호 조회 시 action
         } else if (check_dept.checked) {
             frm.action = './result2'; // 부서명 조회 시 action
         }
     }
     check_id.addEventListener('change',updateFormAction)
     check_dept.addEventListener('change',updateFormAction)
	</script>
</body>
</html>
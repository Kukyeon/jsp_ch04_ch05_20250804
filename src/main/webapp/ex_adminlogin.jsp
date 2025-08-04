<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
	<script type="text/javascript">
	function loginCheck() {
		if(document.loginForm.adminId.value.length == 0){
			alert("아이디와 비밀번호는 필수 입력 사항입니다.");
			document.loginForm.adminId.focus(); // 해당위치로 커서이동
			return false;
		}
		if(document.loginForm.adminPw.value.length == 0){
			alert("아이디와 비밀번호는 필수 입력 사항입니다.");
			document.loginForm.adminPw.focus(); // 해당위치로 커서이동
			return false;
		}
	}
	</script>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<form action="ex_adminloginOk.jsp" name="loginForm" method="post" onsubmit="return loginCheck()">
		아이디 : <input type="text" name="adminId"><br><br>
		비밀번호 : <input type="password" name="adminPw"><br><br>
		<input type="submit" value="로그인">
	
	</form>
</body>
</html>
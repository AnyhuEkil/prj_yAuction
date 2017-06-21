<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪LOGIN</title>
<link rel="stylesheet" href="resources/css/test.css">
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		focusEnter(signCnt);
	});
	var signCnt = 1;
	document.addEventListener("keydown", keyDown);
	function keyDown(e) {
		if (e.keyCode == 13) {
			if (signCnt < 5) {
				signCnt++;
			}else if (signCnt ==5){
				$('form').submit();
				alert("회원가입완료");
			}
			focusEnter(signCnt);
		}
	}
	function focusEnter(signCnt) {
		$('input[id=signUp' + signCnt + ']').focus();
	}
</script>
</head>
<body>
	<div class="yTr">회원가입하세요</div>
	<form method="post">
		<!-- TODO 시퀀스로 자동 유저 번호 등록-->
		<div class="yTr">
			<div class="yTd">USER_ID</div>
			<div class="yTd">
				<input type="text" name="userIdInput" id="signUp1"
					value="${loginCtrlModelAttribute.userId }" />
			</div>
		</div>

		<div class="yTr">
			<div class="yTd">USER_NAME</div>
			<div class="yTd">
				<input type="text" name="userNameInput" id="signUp2"
					value="${loginCtrlModelAttribute.userName}" />
			</div>
		</div>
		<div class="yTr">
			<div class="yTd">Email</div>
			<div class="yTd">
				<input type="text" name="emailInput" id="signUp3"
					value="${loginCtrlModelAttribute.email }" />
			</div>
		</div>
		<div class="yTr">
			<div class="yTd">Password</div>
			<div class="yTd">
				<input type="text" name="passwordInput" id="signUp4"
					value="${loginCtrlModelAttribute.password }" />
			</div>
		</div>
		<div class="yTr">
			<div class="yTd">Password2</div>
			<div class="yTd">
				<input type="text" name="passwordInput" id="signUp5"
					value="${loginCtrlModelAttribute.password2 }" />
			</div>
		</div>
		<div class="yTr">
			<input type="button" value="회원가입" id="signUp6" />
		</div>
		<!-- REGISTER_DATE 자동 등록 SYSDATE-->
		<!-- AUTH 자동 등록 3 -->
		<!-- USER_POINT 자동 등록 5000 -->
	</form>
</body>
</html>
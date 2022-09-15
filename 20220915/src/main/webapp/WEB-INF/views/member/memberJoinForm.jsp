<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th {
	width: 150px;
}
</style>
</head>
<body>
<div align="center">
	<div><h1>멤버 가입</h1></div>
	<div>
		<form id="frm" action="memberInsert.do" onsubmit="return formCheck()" method="post">
			<div>
				<table border=1>
					<tr>
						<th>아이디</th>
						<td><input type="text" id="memberId" name="memberId" required="required"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="memberPassword" name="memberPassword" required="required"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" id="pwc" required="required"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" id="memberName" name="memberName" required="required"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" id="memberTel" name="memberTel"></td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="hidden" name="memberAuthor" value="USER">
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='memberSelectList.do'">
			</div>
		</form>
	</div>
</div>
<script>
	function formCheck() {
		let pw1 = document.getElementById('memberPassword').value;
		let pw2 = document.getElementById('pwc').value;
		
		if(pw1 != pw2) {
			alert("패스워드 불일치");
			document.getElementById('memberPassword').value = "";
			document.getElementById('pwc').value = "";
			document.getElementById('memberPassword').focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>
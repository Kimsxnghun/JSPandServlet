<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action = "LoginService" method = "post">
	<table border = "1px solid black">
			<tr>
				<td>ID</td>
				<td>
					<input type = "text" name = "id" placeholder="ID�� �Է��ϼ���">
				</td>			
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "password" name = "pw" placeholder="PW�� �Է��ϼ���"></td>				
			</tr>
			<tr>
				<td colspan = "2" align = "center">
					<input type = "submit" value = "�α���">
					<button type = "button" onclick = "location.href = 'join.jsp'">ȸ������</button>
				</td>
			</tr>
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action = "JoinService" method = "post">
	<table border = "1px solid black">
			<tr>
				<td>ID</td>
				<td>
					<input type = "text" name = "id" class = "input_id">
					<font id = "checkId" size = "2"></font>
				</td>
				
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "password" name = "pw" class = "pw" id = "password_1"></td>				
			</tr>
			<tr>
				<td>PW Ȯ��</td>
				<td colspan = "2">
					<input type = "password" name = "pw2" class = "pw" id = "password_2">
					<font id = "checkPw" size = "2"></font>
				</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td><input type = "text" name = "display_name"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type = "text" name = "phone"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type = "text" name =  "address"></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<span>����</span>
					<input type = "radio" name = "sex" value = "man">
					<span>����</span>
					<input type = "radio" name = "sex" value = "woman">
				</td>	
			</tr>
			<tr>
				<td colspan = "2" align = "center"><input type = "submit" value = "�����ϱ�"></td>
			</tr>
	</table>
</form>

    <script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		$('.pw').focusout(function(){
			let pass1 = $("#password_1").val();
			let pass2 = $("#password_2").val();
			
			if (pass1 != "" || pass2 !=""){
				if (pass1 == pass2){
					$("#checkPw").html('��ġ');
					$("#checkPw").attr('color','green');
				} else {
					$("#checkPw").html('����ġ')
					$("#checkPw").attr('color','red');
										
				}
			}
			
		})		
		
				
		$('.input_id').focusout(function(){
			let userId = $('.input_id').val(); // input_id�� �ԷµǴ� ��
			
			$.ajax({
				url : "IdCheckService",
				type : "post",
				data : {userId: userId},
				dataType : 'json',
				success : function(result){
					if(result == 0){
						$("#checkId").html('����� �� ���� ���̵��Դϴ�.');
						$("#checkId").attr('color','red');
					} else{
						$("#checkId").html('����� �� �ִ� ���̵��Դϴ�.');
						$("#checkId").attr('color','green');
					} 
				},
				error : function(){
					alert("������û����");
				}
			})
			 
		})
	</script>

</body>
</html>
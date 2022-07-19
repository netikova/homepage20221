<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action='<%=request.getContextPath() %>/member/insert.do' method='post'>
		아이디 : <input type='text' name='memberId' /><br> 
		비밀번호 : <input type='password' name='memberPass' /><br> 
		이름 : <input type='text' name='memberName' /><br> 		
		<input type='submit' />
	</form>
</body>
</html>
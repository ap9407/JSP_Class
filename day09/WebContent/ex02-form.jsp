<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>

</head>
<body>
<%
	Cookie[] cookie = request.getCookies();
	if(cookie != null){
		for(Cookie co : cookie) {
			if(co.getName().equals("id")){
				response.sendRedirect("ex02-main.jsp");
			}
		}
	}
%>

<h1>세션쿠키를 활용한 자동 로그인</h1>
<hr>

<form action="ex02-action.jsp" method="POST">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p>
		<label>
			<input type="checkbox" name="autologin">자동 로그인
		</label>
	</p>
	<p><input type="submit" value="로그인"/>
</form>

</body>
</html>
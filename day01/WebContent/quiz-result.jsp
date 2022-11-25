<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-result.jsp</title>
</head>
<body>
<%-- 
	quiz-form.jsp에서 넘어온
	파라미터를 <table>태그를 이용하여 각각 출력
 --%>
<%
	String id  = request.getParameter("id");
	String password = request.getParameter("password");
	String password2 = request.getParameter("password2");
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	String boy = request.getParameter("boy");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	
	
%>
<table border="1" cellpadding="10" cellspacing="0"> 
	<tr>
		<th>입력</th>
		<th>출력</th>
		
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=id %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=password %></td>
	</tr>
	<tr>
		<td>비밀번호 재확인</td>
		<td><%=password2 %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=name %></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><%=date %></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><%=boy %></td>
	</tr>
	<tr>
		<td>본인 확인 이메일</td>
		<td><%=email %></td>
	</tr>
	<tr>
		<td>휴대전화</td>
		<td><%=phone %></td>
	</tr>
	
</table>


</body>
</html>
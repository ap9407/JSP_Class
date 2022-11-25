<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-form.jsp</title>
</head>
<body>
<!-- 
	HTML과 CSS위주로 네이버 회원가입 페이지를 작성
 -->
<h1>NAVER</h1>
<hr>

<form action="quiz-result.jsp">
	<p><input type="text" name="id" placeholder="아이디" required autocomplete="off"></p>
	<p><input type="text" name="password" placeholder="비밀번호" required autocomplete="off"></p>
	<p><input type="text" name="password2" placeholder="비밀번호확인" required autocomplete="off"></p>
	<p><input type="text" name="name" placeholder="이름" required autocomplete="off"></p>
	<p><input type="text" name="date" placeholder="생년월일" required autocomplete="off"></p>
	<p><input type="text" name="boy" placeholder="성별" required autocomplete="off"></p>
	<p><input type="text" name="email" placeholder="본인확인이메일" required autocomplete="off"></p>
	<p><input type="text" name="phone" placeholder="휴대전화" required autocomplete="off"></p>
	<p><input type="submit"></p>
</form>
 
</body>
</html>
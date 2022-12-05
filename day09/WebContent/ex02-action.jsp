<%@page import="day09.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="day09.Member" />
<jsp:setProperty property="*" name="user" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>
	<%--
		form 에서 입력받은 데이터로 로그인을 판별하여 세션에 저장
		필요하다면 쿠키도 활용하여 처리함
		성공하면 main으로 이동
		실패하면 form으로 다시 이동
		
		자동로그인에 체크했다면 현재 세션은 id를 쿠키에 저장(24시간)
 --%>
	<%
		Handler handler = new Handler();
		Member login = handler.login(user);
		String autologin = request.getParameter("autologin");

		//	String autologin = request.getParameter("autologin");
		if (login != null) {
			session.setAttribute("login", login);
			if (autologin != null) {
				Cookie cookie = new Cookie("id", session.getId());
				cookie.setMaxAge(60 * 60 * 24);
				response.addCookie(cookie);

			}
			response.sendRedirect("ex02-main.jsp");
		} else {
	%>
	<h3>로그인 실패</h3>
	<a href="ex02-form.jsp"><button>뒤로 가기</button></a>

	<%
		}
	%>

</body>
</html>
<%@page import="day08.Handler"%>
<%@page import="day08.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="user" class="day08.Member" />
<jsp:setProperty name="user" property="*" />

<%
	Handler handler = new Handler();
	boolean login = handler.login(user);
	pageContext.setAttribute("login", login);
	String storeid = request.getParameter("storeid");
	if (login == true && storeid != null) {
		String userid = request.getParameter("userid");
		Cookie cookie = new Cookie("userid", userid);
		cookie.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie);

// 		response.sendRedirect("quiz-form.jsp");
	}

	else {	//if (login == true && storeid == null) {
		Cookie cookie = new Cookie("userid", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);

// 		response.sendRedirect("quiz-form.jsp");

	} 
	
%>
<h3>로그인 ${login ? '성공' : '실패' }</h3>
<!-- <button onclick="history.back()">뒤로 가기</button> -->
<a href="quiz-form.jsp"><button>뒤로 가기</button></a>


</body>
</html>
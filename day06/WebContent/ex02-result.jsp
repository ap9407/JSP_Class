<%@page import="day06.UPDN"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>UP DOWN 게임</h1>
<hr>

<h3>결과 : ${result }</h3>
<h3>컴터 : ${cpu }</h3>
<%

	UPDN updn = (UPDN) application.getAttribute("updn");
	int user = Integer.parseInt(request.getParameter("user"));
	
%>

<%if(updn.getCpu() == user){
	application.removeAttribute("updn");%>
<h3>횟수 : ${cnt }</h3>
<a href="ex02-form.jsp"><button>초기화</button></a>
<%} %>

<%if(updn.getCpu() != user){%>
<a href="ex02-form.jsp"><button>다시</button></a>	
<%} %>

</body>
</html>
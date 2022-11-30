<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<%@ page import="day06.UPDN" %>
<%
	UPDN updn = (UPDN) application.getAttribute("updn");
	if(updn == null){
		updn = new UPDN();
		application.setAttribute("updn", updn);
	}

	
	int user = Integer.parseInt(request.getParameter("user"));
	int cpu = updn.getCpu();
	
	String result = updn.getResult(cpu, user);
	int cnt = updn.getCnt();
	
	
	request.setAttribute("result", result);
	request.setAttribute("cpu", cpu);
	request.setAttribute("cnt", cnt);
	
	request.getRequestDispatcher("ex02-result.jsp").forward(request, response);
	
	
	
	
	
	
	
	
%>

</body>
</html>
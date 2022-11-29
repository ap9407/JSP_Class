<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="phonebook.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
	
	background-color: #ffd700;
	}
	header, nav, main, aside, section {
		margin: 0;
		padding: 0;
	}
	header {
		border-radius: 30px;
		background-color: blue;
		color: white;
		font-family:'궁서체';
		border: 3px solid black;
		padding-left:20px;
		
	}
	header > h2 {
		color: #ffd700;
		font-family:'궁서체';
	}
	h1, h2, h3 {
	font-family:'궁서체';
	
	}
	
	main {
		display: flex;
		width: 1000px;
		margin: auto;
	}
	aside {
		width: 20%;
		height: 200px !important;
		background-color: #ffd700;
	}
	aside > nav > ul > li {
		font-family:'궁서체';
		font-size : 30pt;
		padding: 5px;

	}
	section{
		width: 70%;
	}
	section > form > p > input {
		font-family:'궁서체';
		font-size: 120%;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	table {
		border-collapse: collapse;
		margin: 20px auto;
	}
	
	thead th { 
		background-color: blue;
		color: white;
		padding: 5px 10px;
		font-family:'궁서체';
		font-size: 20pt;
	}
	tbody td {
		padding: 5px 10px;
	}
	tbody > tr{
	font-family:'궁서체';
	font-size: 140%;
	}
	tbody > tr:hover {
		background-color: #ffff00;
		cursor: pointer;
	}
	th, td{
	border: 1px solid black;
	}
	div > img{
	width: 300px;
	height: 200px;

	}
	div.f {
	width: 1000px;
	margin-top:80px
	}
	div.f2{
	width: 1000px;
	}
</style>


</head>
<body>

<header>
	<h2>부산</h2>
	<h1><a href="${cpath }">전화번호부</a></h1>
</header>

<main>
	<aside>
		<nav>
			<ul>
				<li><a href="${cpath }/list.jsp">목록</a></li>
				<li><a href="${cpath }/add.jsp">추가</a></li>
			
			</ul>
		</nav>
	
	</aside>
</body>
</html>
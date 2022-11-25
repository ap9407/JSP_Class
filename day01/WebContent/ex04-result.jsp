<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-result.jsp</title>
</head>
<body>

<h1>입력값(파라미터) 받아서 처리하기</h1>
<hr>
<%!
public String adultcheck(int age){
	if(age >= 20){
		return "성인";
	}else{
		return "미성년자";
	}
}

%>
 
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	int a = Integer.parseInt(age);
	String adult = adultcheck(a);

%>



<h3><%=name %>님의 나이는 <%=age %>살이므로 <%=adult %>입니다.</h3>

<div>
	<a href="ex04-form.jsp"><button>돌아가기</button></a>
</div>
</body>
</html>
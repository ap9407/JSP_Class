<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equalsIgnoreCase("GET")){	 %>
	
	<form method='POST'>
		<p><input type="text" name="name" placeholder="이름" required></p>
		<p><input type="text" name="phoneNum" placeholder="전화번호" required></p>
		<p><input type="submit" value="추가"></p>
	</form>
	
	<% }	 %>
	<% if(request.getMethod().equalsIgnoreCase("POST")) { %>
	
	<jsp:useBean id="user" class="phonebook.Phonebook" scope="page" />
	<jsp:setProperty property="*" name="user"/>
	
	
	${handler.insert(user) }
	
	<% } %>
</section>
</main>

</body>
</html>
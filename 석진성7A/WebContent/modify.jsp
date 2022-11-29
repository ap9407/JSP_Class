<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>

	<% if(request.getMethod().equalsIgnoreCase("GET")){	 
	int idx = Integer.parseInt(request.getParameter("idx"));
	pageContext.setAttribute("food", hd.getItem(idx));
	
	%>
	
	<form method='POST'>
		<p><input type="text" name="name" placeholder="이름" value="${phonebook.name }" required></p>
		<p><input type="text" name="phoneNum" placeholder="전화번호" value="${phonebook.phoneNum }" required></p>
		<p><input type="submit" value="수정"></p>
	</form>
	
	<% }	 %>
	
	<% if(request.getMethod().equals("POST")) { %>
	
	<jsp:useBean id="user" class="phonebook.Phonebook"  />
	<jsp:setProperty property="*" name="user" />
	
	<h3>${handler.modify(user) >= 0 ? '수정 성공' : '수정 실패' }</h3>
	
	<% } %>
	
	
</section>
</main>

</body>
</html>
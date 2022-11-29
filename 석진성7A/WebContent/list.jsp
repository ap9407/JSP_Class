<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<section>
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
			</tr>
		</thead>
		<tbody>
		<%
			for(Phonebook phonebook : hd.getList()){
			pageContext.setAttribute("phonebook", phonebook);
				

		%>
			<tr>
				<td>${phonebook.name }</td>
				<td>${phonebook.phoneNum }</td>
				<td><a href="${cpath }/modify.jsp?idx=${phonebook.idx}"><button>수정</button></a></td>
				<td><a href="${cpath }/delete	.jsp?idx=${phonebook.idx}"><button>삭제</button></a></td>
				
			</tr>
			
		<% }			 %>
		</tbody>
	</table>	
	<div class="f">
	<img src="img/디자인베이.PNG">
	<img src="img/만년종합상사.PNG">
	<img src="img/치항고려외과.PNG">
	</div>	
	<div class="f2">
	<img src="img/하수구뻥.PNG">
	<img src="img/현대건재농자재.PNG">
	<img src="img/인터넷.PNG">
	</div>	
</section>

</body>
</html>
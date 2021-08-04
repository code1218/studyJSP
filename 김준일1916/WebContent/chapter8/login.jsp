<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Servlet Session</h1>
<%
	if(id != null){
%>	
	<%=id %>님 반갑습니다.<br>
	<a href='logout.jsp'>로그아웃</a>
<%
	}else{
%>
	<form method="post" action="LoginServlet">
		id: <input name = "id"><br>
		pwd: <input name = "pwd"><br>
		<input type = "submit" value = "로그인">
	</form>
<%
	}
%>
</body>
</html>






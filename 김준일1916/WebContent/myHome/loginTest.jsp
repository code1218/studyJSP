<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="myHome.LoginData"  %>
<%@ page import="myHome.UserData"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name;
		
		LoginData login = LoginData.getLoginData();
		UserData user = login.getUser();
		
		if(user != null) {
			name = user.getName();
	%>
		<h1>사용자의 이름은 <%=name %></h1>
	<%
		}else{
	%>
	<script>
		alert("로그인에 실패하였습니다.");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>
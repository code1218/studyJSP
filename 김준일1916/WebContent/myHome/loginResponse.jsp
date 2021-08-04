<%@page import="myHome.LoginData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="myHome.UserData" scope="request"/>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	LoginData login = LoginData.getLoginData();
	user.setId(login.getUser().getId());
	user.setPwd(login.getUser().getPwd());
	user.setName(login.getUser().getName());
	System.out.println(user.getId());
	
	if(user.getId().equals(id)){
		if(user.getPwd().equals(pwd)){
%>
			<jsp:forward page="index.jsp"></jsp:forward>
<%
		}else{
%>
		<script>
			alert("비밀번호가 틀렸습니다. 다시 입력해 주세요.");
			history.back();
		</script>
<% 
		}
	}else{
%>
<jsp:forward page="join.jsp">
	<jsp:param value="<%=id %>" name="loginId"/>
</jsp:forward>
<%
	}
%>
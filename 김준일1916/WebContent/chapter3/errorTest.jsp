<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int one = 1;
		int zero = 0;
	%>
	<h1>error example</h1>
	one과 zero의 사칙연산<br>
	one+zero=<%=one+zero %><br>
	one-zero=<%=one-zero %><br>
	one*zero=<%=one*zero %><br>
	one/zero=<%=one/zero %><br><!-- 0으로 숫자를 나눌 수 없어서 오류발생 -->
</body>
</html>
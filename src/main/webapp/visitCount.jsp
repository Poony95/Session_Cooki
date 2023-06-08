<%@page import="util.SistUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int visitCount = 1;
	
	if(SistUtil.getCookie(request,"visitCount") != null){
		visitCount =  Integer.parseInt(SistUtil.getCookie(request,"visitCount"));
	}

	out.print(visitCount + "번째 방문입니다.");
	visitCount++;
	Cookie cookie = new Cookie("visitCount",visitCount+"");
	response.addCookie(cookie);
	
%>
</body>
</html>












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
	if(SistUtil.getCookie(request, "year")!=null){
		int year = Integer.parseInt(SistUtil.getCookie(request, "year"));		
		year+=1;
		out.print("year:"+year);
	}

	String member = SistUtil.getCookie(request, "member");
	if(member == null){
		out.print("member쿠키는 없어요");
	}else{
		out.print(member);
	}
%>
</body>
</html>












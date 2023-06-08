<%@page import="vo.Member"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<Member> list = new ArrayList<Member>();
	list.add(new Member("tiger","tiger1234","홍길동"));
	list.add(new Member("kim","kim1234","김유신"));
	list.add(new Member("lee","lee1234","이순신"));
	
	session.setAttribute("list", list);
%>
세션에 회원목록을 저자하였습니다.
<hr>
<a href="getMember.jsp">회원목록 확인하기</a>
</body>
</html>











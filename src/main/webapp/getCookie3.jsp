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
	// 쿠키에 저장된 year를 읽어와서 +1하여 출력 합니다.
	
	Cookie []cookies= request.getCookies();
	for(Cookie c:cookies){
		String name = c.getName();
		if(name.equals("year")){
			String value = c.getValue();
			int year = Integer.parseInt(value);
			year+=1;
			out.print("year:"+year);
			break;
		}
	}
%>
</body>
</html>












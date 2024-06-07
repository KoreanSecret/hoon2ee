<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	Cookie[] cookies = request.getCookies(); //여러개의 쿠키를 배열로 받는다.
 
 	StringBuilder sb = new StringBuilder();
 	if(cookies != null){
 		for(Cookie cookie : cookies) {
 			String cName = cookie.getName();
 			String cValue = cookie.getValue();
	
 			//decoding
 			cName = URLDecoder.decode(cName, "utf-8");
 			cValue = URLDecoder.decode(cName, "utf-8");
 			
 			sb.append("쿠키이름 :" + cName + "쿠키값 :" + cValue + "<br>");
 		}
 	}
 	
 	pageContext.setAttribute("sb", sb.toString());
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 정보 </h2>
	${ sb }
	<a href = "addForm.jsp"> 쿠키 설정으로 이동 </a>
</body>
</html>
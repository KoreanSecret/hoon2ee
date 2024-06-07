<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
 	   	
    	String cName = request.getParameter("cName");
    	String cValue = request.getParameter("cValue");
    	String cAge = request.getParameter("cAge");
    	
    	
    	// encoding
    	cName = URLEncoder.encode(cName, "utf-8");
    	cValue = URLEncoder.encode(cValue, "utf-8");
    	
    	// 쿠키생성
    	Cookie cookie = new Cookie(cName, cValue);
    	
    	//유효시간 설정
    	if(cAge != null && cAge.length() > 0) {
    		cookie.setMaxAge(Integer.parseInt(cAge) * 60);
    	}
    	
    	Cookie cookie2 = new Cookie("type2", URLEncoder.encode("/Mission-WEB/jsp/cookie/type02 설정", "utf-8"));
    	cookie2.setPath("/Mission-WEB/jsp/cookie/type02");
    	Cookie cookie3 = new Cookie("type1", URLEncoder.encode("/Mission-WEB/jsp/cookie/type01 설정", "utf-8"));
    	cookie3.setPath("/Mission-WEB/jsp/cookie/type01");
    	Cookie cookie4 = new Cookie("typecookie", URLEncoder.encode("Mission-WEB/jsp/cookie 설정", "utf-8"));
    	cookie4.setPath("/Mission-WEB/jsp/cookie");
    	
    	// 쿠키전송
    	response.addCookie(cookie);
    	response.addCookie(cookie2);
    	response.addCookie(cookie3);
    	response.addCookie(cookie4);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 쿠키설정완료 </h2>
	<a href="get.jsp">설정된 쿠키정보 확인</a>
</body>
</html>
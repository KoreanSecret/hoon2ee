<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> boardMap = new HashMap<>();
	boardMap.put("no", "123");
	boardMap.put("title", "hello el...");
	
	pageContext.setAttribute("board", boardMap);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= boardMap.get("no") %><br>
	title : <%= boardMap.get("title") %><br>
	
	el no : ${ board.no }<br>
	el no : ${board['no']}<br>
	el title : ${ board.title }<br>
	el aaa : ${board.aaa }<br>
</body>
</html>










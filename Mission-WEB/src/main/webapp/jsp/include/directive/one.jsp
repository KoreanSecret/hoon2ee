<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
     String fileName = "one.jsp";
     request.setAttribute("fileName" , fileName);
%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
param id : ${ param.id }
request id : ${ id }<br>
param id2: ${ param.id }
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<hr>
</body>
</html>
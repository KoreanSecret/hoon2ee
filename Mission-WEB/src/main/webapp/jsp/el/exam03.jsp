<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
  공유영역에 객체 등록
  공유영역.setAttribute("이름","값")
  공유영역 4가지 : pageContext, request , session , application
*/


      pageContext.setAttribute("msg", "page영역에 객체등록");

     // request영역에 "id" 이름으로 "홍길동" 등록
     request.setAttribute("id", "홍길동");
     
     request.setAttribute("msg" , "request 공유영역에 객체등록");
     
     request.setAttribute("length", "request 공유영역에 객체등록".length());
     request.setAttribute("length",((String)request.getAttribute("msg")).length());

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <%--
          EL의 공유영역 4가지 : pageScope , requestScope , sessionScope , applcationScope
        --%>
        empty msg : ${empty msg}<br>
       msg : ${ msg }<br>
       id  : ${ id }<br>
       id  : <%= request.getAttribute("id") %><br> 
       
       request msg : ${ requestScope.msg }<br>
       request msg length : <%=((String)request.getAttribute("msg")).length() %><br>
       request msg length : ${ length }<br>
</body>
</html>
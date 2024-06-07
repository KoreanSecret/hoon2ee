<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--
         forwardSet.jsp?id=admin => 관리자님 환영합니다 
         forwardSet.jsp?id=hong  => 일반 사용자 hong님 환영합니다
         forwardSet.jsp?id=aaa  => 일반 사용자 aaa님 환영합니다
         
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h1>ForwordSet 결과!!!</h1>
      <c:if test="${ param.id == 'admin' }">
           <jsp:forward page="admin.jsp" />
      </c:if>
      <c:if  test="${ param.id ne 'admin' }">
           <jsp:forward page="user.jsp" />
      </c:if>

</body>
</html>
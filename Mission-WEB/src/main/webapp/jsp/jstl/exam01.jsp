<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    1값을 가지는 변수 cnt를 공유영역(page) 설정<br>
    <c:set  var="cnt" value="1" />
    공유영역에 설정된 cnt값 출력<br>
    ${ cnt }<br>
    변수 cnt 값에 1을 증가<br>
    <c:set var="cnt" value="${cnt +1 }" scope="request" />
    
    
    request 영역의 변수 cnt 삭제<br>
    <c:remove var = "cnt" scope="request" />
     <%--<c:remove var = "cnt"  />--%>
    
    
    
    cnt : ${ cnt }<br>
    request cnt : ${requestScope.cnt }<br>
    <hr>
    cnt : <c:out value="${cnt }" /><br>
    request cnt : <c:out value="${requestScope.cnt }" default="변수가 존재하지 않습니다" /><br>
    
    <c:out value="<hr>" escapeXml="false"/>
    
</body>
</html>

<%--
           JSP              EL             JSTL
     -----------------------------------------------
         pageContext     pageScope         page
         request         requestScope      request
         session        sessionScope       ssesion
         application    applicationScope   application
--%>












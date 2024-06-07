<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"홍길동", "윤길동", "강길동", "한길동", "김길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${ names }" var="name" varStatus="loop">
		${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>
	<hr>
	<c:forEach items="${ names }" var="name" varStatus="loop">
<%-- 		<c:if test="${ loop.count != 1 }"> --%>
		<%-- <c:if test="${ loop.index ne 0 }"> --%>
		<c:if test="${ not loop.first }">
		,
		</c:if>
		${ name }
	</c:forEach>
	<hr>
	<c:set var="cnt" value="1" />
	<c:forEach items="${ names }" var="name">
		<c:if test="${ cnt ne 1 }">
		,
		</c:if> 
		${ name }
		<c:set var="cnt" value="${ cnt + 1 }" />
	</c:forEach>
	<c:remove var="cnt" scope="page" />
	<hr>
	<c:forEach items="${ names }" var="name">
		${ name }
	</c:forEach>
	<hr>
	<c:forEach begin="0" end="${ fn:length(names) - 1 }" var="i">
		${ names[i] }
	</c:forEach>
	<hr>
	<c:forEach begin="0" end="${ length-1 }" var="i">
		${ names[i] }
	</c:forEach>
	<hr>
	<h2>1 ~ 10사이의 정수 출력</h2>
	<c:forEach begin="1" end="10" var="i">
		${ i }<br>
	</c:forEach>
	년도선택 : 
	<select> 
		<c:forEach begin="2000" end="2024" var="year" step="5">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>












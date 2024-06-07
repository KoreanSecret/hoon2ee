<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<table border="1" style="width: 100%">
	<tr>
		<td rowspan="2">
			<a href="/Mission-WEB">
			<div style="height:45px; width:200px;text-align: center">LOGO</div>
			</a>
		</td>
		<td align="right">
			<c:if test="${ not empty userVO }">
				[${ userVO.name }(${ userVO.id })님으로 로그인중...]
			</c:if>
			<c:if test="${ empty userVO }">
				GUEST...
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
		    <c:if test="${ userVO.type eq 'S' }">
			회원관리 | 
			</c:if>
			<a href="/Mission-WEB/board/list.jsp">게시판</a> |
			<c:choose>
			<c:when test="${ empty userVO }"> 
			 <a href="/Mission-WEB/member/memberform.jsp">회원가입 |</a>
			<a href="/Mission-WEB/login/login.jsp">로그인</a> | 
			</c:when>
			<c:otherwise>
			마이페이지 |
			<a href="/Mission-WEB/login/logout.jsp"> 
				로그아웃
			</a>
			</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>









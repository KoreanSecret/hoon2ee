<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="kr.ac.kopo.util.ConnectionFactory" %>    
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%--
	전체게시글 조회 순서
	1. 오라클의 t_board 테이블에서 게시글 조회 ==> JAVA
	2. <html> 화면에 게시글 출력
 --%>    
<%
	List<BoardVO> boardList = new ArrayList<>();	

	StringBuilder sql = new StringBuilder();
	sql.append("select no, title, writer, to_char(reg_date, 'yyyy-mm-dd') reg_date ");
	sql.append("  from t_board ");
	sql.append(" order by no desc ");
	try(
		Connection conn = new ConnectionFactory().getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	) {
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			int no = rs.getInt("no");
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			String regDate = rs.getString("reg_date");
			
			BoardVO board = new BoardVO(no, title, writer, regDate);
			boardList.add(board);
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	// 공유영역 등록
	pageContext.setAttribute("boardList", boardList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-WEB/resources/css/layout.css">
<link rel="stylesheet" href="/Mission-WEB/resources/css/table.css">
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	
	$(document).ready(function() {
		$('#addBtn').click(function() {
			location.href = 'writeForm.jsp'
		})
	})
	
	let goDetail = function(boardNo) {
		<c:if test="${ not empty userVO }">
			location.href = 'detail.jsp?no='+ boardNo
		</c:if>
			
		<c:if test="${ empty userVO }">
			if(confirm('로그인 후 사용가능합니다\n로그인페이지로 이동하시겠습니가?'))
				location.href = '/Mission-WEB/login/login.jsp'
		</c:if>
	}

	/*
	window.onload = function() {
		let btn = document.querySelector('#addBtn')
		btn.addEventListener('click', function() {
			location.href = 'writeForm.jsp'
		})
	}
	*/
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		<br>
		<hr>
		<h2>전체게시글</h2>
		<hr>
		<br>
		<table border="1" style="width:100%;" class="listodd">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="17%">작성자</th>
				<th width="20%">등록일</th>
			</tr>
			<c:forEach items="${ boardList }" var="board">
				<tr>
					<td>${ board.no }</td>
					<td>
						<a href="javascript:goDetail(${ board.no })">
							<c:out value="${ board.title }"/>
						</a>
					
						<%-- <a onclick="goDetail()"><c:out value="${ board.title }"/></a> --%>
						<%-- 
						<a href="detail.jsp?no=${ board.no }">
							<c:out value="${ board.title }" />							
						</a> 
						--%>
					</td>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<c:if test="${ not empty userVO }">
			<button id="addBtn">새글등록</button>
		</c:if>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>












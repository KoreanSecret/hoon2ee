<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	http://localhost:8080/Mission-WEB/jsp/board/detail.jsp?no=25 요청
	
	작업순서
	1. 파라미터추출(게시판번호)
	2. 추출된 번호에 해당 게시물 조회(t_board)
	2-1. 공유영역 게시물 등록
	3. 조회된 게시물 웹브라우저 출력 
 --%>   
<%
	int no = Integer.parseInt(request.getParameter("no"));

	BoardDAO boardDao = new BoardDAO();
	BoardVO	board = boardDao.selectByNo(no);
	
	pageContext.setAttribute("board", board);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-WEB/resources/css/layout.css">
<link rel="stylesheet" href="/Mission-WEB/resources/css/table.css">
<script>
	let doAction = function(type) {
		switch(type) {
		case 'L' : 
			location.href = "list.jsp"
			break
		}
	}
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
		<h2>상세게시글 조회</h2>
		<hr>
		<br>
		<table style="width: 100%" border="1">
			<tr>
				<th width="25%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th width="25%">제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th width="25%">작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th width="25%">조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br>
		<button onclick="doAction('U')">수   정</button>
		<button onclick="doAction('D')">삭   제</button>
		<button onclick="doAction('L')">목   록</button>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>

















<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		작업순서
		1. 파라미터 추출(제목, 작성자, 내용)
		2. 추출한 정보를 t_board 테이블에 저장
		3. 전체게시판(list.jsp)으로 이동
	*/
	
	request.setCharacterEncoding("utf-8");
	
// 1단계
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	System.out.println(board);

// 2단계	
	BoardDAO boardDao = new BoardDAO();
//	boardDao.insertBoard(board);
%>
		
<script>

// 3단계
	alert('새글등록을 완료하였습니다')
	location.href = "list.jsp"

</script>
















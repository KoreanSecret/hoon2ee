<%@page import="kr.ac.kopo.util.KopoFileNamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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

	String saveDirectory = "C:/Lecture/web-workspace/Mission-WEB/src/main/webapp/upload";

	MultipartRequest multi =  new MultipartRequest(
									request, 
									saveDirectory, 
									1024*1024*3, 
									"utf-8",
									new KopoFileNamePolicy()
							  );
	// 1. 게시물(t_board) 저장
	String title = multi.getParameter("title");
	String writer = multi.getParameter("writer");
	String content = multi.getParameter("content");
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
%>
		
<script>

// 3단계
//	alert('새글등록을 완료하였습니다')
//	location.href = "list.jsp"

</script>
















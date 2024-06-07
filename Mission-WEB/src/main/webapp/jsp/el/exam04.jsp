<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.ac.kopo.board.BoardVO" %>    

<%
	BoardVO boardVO = new BoardVO();
	boardVO.setNo(10);
	boardVO.setTitle("hello title...");
	
	// pageContext영역에 객체등록
	// 이름 : board   값 : 생성된 BoardVO객체
	pageContext.setAttribute("board", boardVO);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  no : <%= boardVO.getNo() %><br>
  title : <%= boardVO.getTitle() %><br>
  
  el no : ${ board.no }<br>
  el no : ${board['no']}<br>
  el title : ${ board.title }<br>
  el viewCnt : ${board.viewCnt }<br>
  <%--   el aaa : ${board.aaa }<br>  --%>

</body>
</html>




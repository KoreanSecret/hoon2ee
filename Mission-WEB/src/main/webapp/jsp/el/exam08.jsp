<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 //1번
 	/* BoardVO board = new BoardVO();
 	board.setTitle("성공");
 	BoardVO[] boardList = {board}; */
 	
 //2번
 	/* BoardVO board = new BoardVO();
 	board.setTitle("성공");
 	List<BoardVO> boardList = new ArrayList<>();
 	boardList.add(board); */
 	
 //3.맵 + 배열
	/* Map<String, String>boardMap = new HashMap<>();
 	boardMap.put("title", "성공");
 	Map[] boardList ={boardMap}; */
 	
 //4번 맵 + 콜렉션
	/* Map<String, String>boardMap = new HashMap<>();
 	boardMap.put("title", "성공");
 	List<Map<String, String>> boardList = new ArrayList<>();
 		boardList.add(boardMap); */
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 성공이라고 출력되도록 코드 작성  --%>
	성공/실패 ? ${boardList[0].title}<br>
</body>
</html>>
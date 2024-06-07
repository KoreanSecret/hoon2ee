<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String[] hobbies = request.getParameterValues("hobby");
		if(hobbies == null){
			hobbies = new String[]{"파라미터 없음"};
		}
	%>
	
	<%--
		http://localhost:8080/Mission-WEB/jsp/el/exam02.jsp?id=aaa&name=bbb 
		호출했다고 가정했을때 aaa를 출력하는 코드 작성
	 --%>
	id : <%= id %><br>
	id : <%= request.getParameter("id") %><br>
	id : ${ param.id }<br>
	
	name : ${ param.name }<br>
	
	<%--
		http://localhost:8080/Mission-WEB/jsp/el/exam02.jsp
		?id=aaa&name=bbb&hobby=music&hobby=movie 
		호출했다고 가정했을때 hobby에서  music, movie 를 출력하는 코드 작성
	 --%>
	 hobby[0] : <%= hobbies[0] %><br>
	 <%-- hobby[0] : <%= request.getParameterValues("hobby")[0] %><br>--%>
	 hobby[0] : ${paramValues.hobby[0] }<br>
	 <%--hobby[1] : <%= hobbies[1] %><br>--%>
	 empty hobby : ${ empty paramValues.hobby[0] }<br>
</body>
</html>









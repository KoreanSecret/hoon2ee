<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일 업로드 테스트</h2>
	<form method="post" action="uploadInfo.jsp" 
		enctype="multipart/form-data">
		ID : <input type="text" name="id"><br>
		파일 : <input type="file" name="uploadfile"><br>
		<button>전송</button>
	</form>
</body>
</html>







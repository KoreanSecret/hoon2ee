<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
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

//1단계
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String eid = request.getParameter("eid");
	String edm = request.getParameter("edm");
	String tel1 = request.getParameter("tel1");
	String tel2  = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String post = request.getParameter("post");
	String addr = request.getParameter("addr");
	String daddr = request.getParameter("daddr");
	
	MemberVO member = new MemberVO();
	member.setId(id);
	member.setName(name);
	member.setPwd(pwd);
	member.setEid(eid);
	member.setEdm(edm);
	member.setTel1(tel1);
	member.setTel2(tel2);
	member.setTel3(tel3);
	member.setPost(post);
	member.setAddr(addr);
	member.setDaddr(daddr);

//2단계		
	MemberDAO memberdao = new MemberDAO();
	memberdao.insertMember(member);

	%>
	
<script>
//3단계
	alert('회원가입이 완료되었습니다.')
	location.href = "list.jsp"
</script>





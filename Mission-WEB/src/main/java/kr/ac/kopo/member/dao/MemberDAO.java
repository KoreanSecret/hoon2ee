package kr.ac.kopo.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.util.ConnectionFactory;

public class MemberDAO {

	
	/**
	 * 로그인 확인
	 * @param loginVO 조회할 id, password
	 * @throws 조회된 MemberVO, 단, 로그인 실패시 null 반환
	 */
	
	
public MemberVO login(MemberVO loginVO) {
	
	StringBuilder sql = new StringBuilder();
	sql.append("select id, password, name, type ");
	sql.append(" from t_member ");
	sql.append(" where id = ? and password = ? ");
	
	
	try (
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			
			) 
	
		{ 
			pstmt.setString(1, loginVO.getId());
			pstmt.setString(2, loginVO.getPwd());
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String type = rs.getString("type");
				
				
				MemberVO member = new MemberVO();
				member.setId(id);
				member.setPwd(password);
				member.setName(name);
				member.setType(type);
				
				return member;
				
			}
		
		
	} catch (Exception e) {
			e.printStackTrace();
	}
	
	return null;
	
}
	
	
	//회원가입
public void insertMember(MemberVO member) throws Exception {
		
		StringBuilder sql = new StringBuilder();
		sql.append("insert into t_member(id, name, password, email_id, email_domain, tel1, tel2, tel3, post, basic_addr, detail_addr) ");
		sql.append(" values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				) {
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPwd());
			pstmt.setString(4, member.getEid());
			pstmt.setString(5, member.getEdm());
			pstmt.setString(6, member.getTel1());
			pstmt.setString(7, member.getTel2());
			pstmt.setString(8, member.getTel3());
			pstmt.setString(9, member.getPost());
			pstmt.setString(10, member.getAddr());
			pstmt.setString(11, member.getDaddr());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}


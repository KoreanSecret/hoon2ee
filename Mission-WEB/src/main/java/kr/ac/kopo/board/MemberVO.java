package kr.ac.kopo.board;

public class MemberVO {
     private String id;
     private String name;
     private String email_id;
     private String email_domain;
     private String tel1;
     private String tel2;
     private String tel3;
     private String post;
     private String basic_addr;
     private String detail_addr;
     private String type;
     private String reg_date;
	public MemberVO() {
		super();
	}
	public MemberVO(String id, String name, String email_id, String email_domain, String tel1, String tel2, String tel3,
			String post, String basic_addr, String detail_addr, String type, String reg_date) {
		super();
		this.id = id;
		this.name = name;
		this.email_id = email_id;
		this.email_domain = email_domain;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.post = post;
		this.basic_addr = basic_addr;
		this.detail_addr = detail_addr;
		this.type = type;
		this.reg_date = reg_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getEmail_domain() {
		return email_domain;
	}
	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getBasic_addr() {
		return basic_addr;
	}
	public void setBasic_addr(String basic_addr) {
		this.basic_addr = basic_addr;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
     
     
     
     
     
}

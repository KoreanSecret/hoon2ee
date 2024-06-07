package kr.ac.kopo.member.vo;

public class MemberVO {

	private String id;
	private String name;
	private String pwd;
	private String eid;
	private String edm;
	private String tel1;
	private String tel2;
	private String tel3;
	private String post;
	private String addr;
	private String daddr;
	private String type;
	private String regDate;
	
	
	public MemberVO() {
		super();
	}

	public MemberVO(String id, String name, String pwd, String eid, String edm, String tel1, String tel2, String tel3,
			String post, String addr, String daddr, String type, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.eid = eid;
		this.edm = edm;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.post = post;
		this.addr = addr;
		this.daddr = daddr;
		this.type = type;
		this.regDate = regDate;
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getEdm() {
		return edm;
	}

	public void setEdm(String edm) {
		this.edm = edm;
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

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDaddr() {
		return daddr;
	}

	public void setDaddr(String daddr) {
		this.daddr = daddr;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", pwd=" + pwd + ", eid=" + eid + ", edm=" + edm + ", tel1="
				+ tel1 + ", tel2=" + tel2 + ", tel3=" + tel3 + ", post=" + post + ", addr=" + addr + ", daddr=" + daddr
				+ ", type=" + type + ", regDate=" + regDate + "]";
	}
	
	
}

     
     


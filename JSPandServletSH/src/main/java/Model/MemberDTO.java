package Model;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String display_name;
	private String address;
	private String phone;
	private String sex;
	
	public MemberDTO(String id, String pw, String name, String display_name, String address, String phone, String sex) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.display_name = display_name;
		this.address = address;
		this.phone = phone;
		this.sex = sex;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDisplay_name() {
		return display_name;
	}

	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
	
	
	
}

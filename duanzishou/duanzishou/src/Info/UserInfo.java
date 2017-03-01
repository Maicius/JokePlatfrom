package Info;

import com.sun.xml.internal.bind.v2.model.core.ID;

public class UserInfo {

	private int id;
	private String userName;
	private String password;
	private int credit;
	
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserInfo(int id, String userName, String password, int credit) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.credit = credit;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	
}

package UserVo;

public class UserVoClass {

	private int id;
	private String userName;
	private String password;
	private int credit = 10;
	private String headImg;
	
	public UserVoClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserVoClass(int id, String userName, String password, int credit,String headImg) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.credit = credit;
		this.headImg = headImg;
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
	public String getHeadImg() {
		return headImg;
	}
	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}
	
}

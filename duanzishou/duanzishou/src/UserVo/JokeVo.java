package UserVo;

public class JokeVo {

	private int id;
	private String userName;
	private String content;
	private String imagePath;
	private String type;

	public JokeVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JokeVo(int id, String userName, String content, String imagePath,String type) {
		super();
		this.id = id;
		this.userName = userName;
		this.content = content;
		this.imagePath = imagePath;
		this.type = type;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

}

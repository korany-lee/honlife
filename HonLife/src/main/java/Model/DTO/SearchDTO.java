package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SearchDTO implements Serializable {
	String type;
	String content;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}

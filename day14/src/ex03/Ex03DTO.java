package ex03;

import java.io.File;
import java.sql.Date;

public class Ex03DTO {

	private int idx;
	private String name;
	private Date birthDate;
	private String imgPath; // DB에 저장된 경로를 불러오기 위한 필드
	private File uploadFile; // form에서 넘어오는 파일을 받기 위한 필드

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}
}

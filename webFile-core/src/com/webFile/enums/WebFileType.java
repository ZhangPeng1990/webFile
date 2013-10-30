package com.webFile.enums;

public enum WebFileType {

	FOLDER(0,"This is folder"),FILE(1, "This is file"),DISK(2, "This a disk");
	
	private int code;
	private String desc;
	
	private WebFileType(int code, String desc){
		this.code = code;
		this.desc = desc;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}

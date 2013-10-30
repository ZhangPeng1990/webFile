package com.webFile.enums;


public enum UserState {

	ACTIVE(0, "active"),
	FORBIDDEN(1, "forbidden");
	
	private UserState(int code, String des){
		this.code = code;
		this.des = des;
	}
	
	private int code;
	private String des;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
}

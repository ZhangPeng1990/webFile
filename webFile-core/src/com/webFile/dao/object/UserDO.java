package com.webFile.dao.object;

import java.util.Date;

import com.webFile.baseObject.AbstractDO;


public class UserDO extends AbstractDO{
	private static final long serialVersionUID = 4431337708739755877L;
	
	private Integer id;
	private String userName;
	private String password;
	private Date insertTime;
	private Date updateTime;
	private Integer userState;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
	public Date getInsertTime() {
		return insertTime;
	}
	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getUserState() {
		return userState;
	}
	public void setUserState(Integer userState) {
		this.userState = userState;
	}
}

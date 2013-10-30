package com.webFile.Form;

public class ShowCondition {

/**
 * 用于记录点击的条件
 */
private String name;
	
	private String suffix;
	
	private String uri;
	
	private Double size;
	
	private Double totalSpace;
	
	private Double freeSpace;
	
	private Double usableSpace;
	
	private Double usedSpace;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public Double getSize() {
		return size;
	}

	public void setSize(Double size) {
		this.size = size;
	}

	public Double getTotalSpace() {
		return totalSpace;
	}

	public void setTotalSpace(Double totalSpace) {
		this.totalSpace = totalSpace;
	}

	public Double getFreeSpace() {
		return freeSpace;
	}

	public void setFreeSpace(Double freeSpace) {
		this.freeSpace = freeSpace;
	}

	public Double getUsableSpace() {
		return usableSpace;
	}

	public void setUsableSpace(Double usableSpace) {
		this.usableSpace = usableSpace;
	}

	public Double getUsedSpace() {
		return usedSpace;
	}

	public void setUsedSpace(Double usedSpace) {
		this.usedSpace = usedSpace;
	}
	
}

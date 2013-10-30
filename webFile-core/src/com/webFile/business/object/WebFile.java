package com.webFile.business.object;

import java.io.File;
import java.text.DecimalFormat;

import com.webFile.enums.WebFileType;


/**
 * java.io.File基本信息封装
 * @author tyr
 *
 */
public class WebFile {

	private String name;
	
	private String suffix;
	
	private String uri;
	
	private Double size;
	
	private Double totalSpace;
	
	private Double freeSpace;
	
	private Double usableSpace;
	
	private Double usedSpace;

	private WebFileType type;//类型，文件或文件夹或硬盘
	
	private boolean isHidden;

	public WebFile(){
		
	}
	
	public WebFile(File file){
		double constm = 1024 * 1024 * 1024;//GB
		if(file.isFile()){
			this.type = WebFileType.FILE;
			this.name = file.getName();
			this.uri = file.getPath();
			this.size = doubleFormat(file.getTotalSpace() / constm);
			this.isHidden = file.isHidden();
			
			String[] names = this.name.split("\\.");
			if(names.length > 0){
				this.suffix = names[names.length - 1];
			}
		}
		
		if(file.isDirectory()){
			String[] names = file.getPath().split("\\\\"); 
			this.name = names[names.length - 1];
			if(this.name.contains(":")){
				this.type = WebFileType.DISK;
				this.totalSpace = doubleFormat((file.getTotalSpace() / constm));
				this.usableSpace = doubleFormat((file.getUsableSpace() / constm));
				this.freeSpace = doubleFormat((file.getFreeSpace() / constm));
				this.usedSpace = doubleFormat((this.totalSpace - this.usableSpace));
			}
			else{
				this.type = WebFileType.FOLDER;
			}
			this.size = doubleFormat((file.getTotalSpace() / constm));
			this.uri = file.getPath();
			this.isHidden = file.isHidden();
		}
	}
	
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

	public WebFileType getType() {
		return type;
	}

	public void setType(WebFileType type) {
		this.type = type;
	}

	public Double getSize() {
		return size;
	}

	public void setSize(Double size) {
		this.size = size;
	}
	
	public Double getUsedSpace() {
		return usedSpace;
	}

	public void setUsedSpace(Double usedSpace) {
		this.usedSpace = usedSpace;
	}

	public boolean isHidden() {
		return isHidden;
	}

	public void setHidden(boolean isHidden) {
		this.isHidden = isHidden;
	}

	private Double doubleFormat(double d){   
        DecimalFormat df = new DecimalFormat(".##");
        String num = df.format(d);
        System.out.print(d + "----->");
        System.out.println(Double.parseDouble(num));
        return Double.parseDouble(num);                   
    }
	
}

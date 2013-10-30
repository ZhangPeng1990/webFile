package com.webFile.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.webFile.business.object.WebFile;
import com.webFile.tools.FileTools;
import com.webFile.tools.JsonTool;
import com.webFile.tools.ZipUtil;

@Controller
@RequestMapping("/index")
public class FileController {

	@RequestMapping("/listRoots") 
	public String listRoots(HttpServletRequest request, ModelMap mm){
		
		List<File> list = FileTools.listUsingRoots();
		if(!CollectionUtils.isEmpty(list)){
			List<WebFile> listFiles = new ArrayList<WebFile>();
			WebFile disk = new WebFile();//表示硬盘
			for(File f : list){
				if(f.isHidden()){
					WebFile wf = new WebFile(f);
					listFiles.add(wf);
					if(wf.getName().contains(":")){
						double total = (disk.getTotalSpace() != null ? disk.getTotalSpace() : 0) + wf.getTotalSpace();
						double used = (disk.getUsedSpace() != null ? disk.getUsedSpace() : 0) + wf.getUsedSpace();
						disk.setTotalSpace(total);
						disk.setUsedSpace(used);
					}
				}
				
			}
			mm.addAttribute("listFiles", listFiles);
			mm.addAttribute("disk", disk);
			
		}
		
		return "mainFile/browse";
	}
	
    @RequestMapping(value="/listPathFiles",produces="text/plain;charset=utf-8")  
	@ResponseBody
	public String getFilesByPath(HttpServletResponse response, @RequestParam("path") String path){

		String json = "";
		List<File> tempList = FileTools.listAllFiles(path);
		if(!CollectionUtils.isEmpty(tempList)){
			List<WebFile> files = new ArrayList<WebFile>();
			for(File file : tempList){
				if(!file.isHidden()){
					WebFile webFile = new WebFile(file);
					files.add(webFile);
				}
			}
			json = JsonTool.objects2Json(files);
			System.out.println(json);
			response.setStatus(200);
			response.setContentType("text/html;charset=UTF-8"); 
		}
		return json;
	}
    
    @RequestMapping(value="/createFolder",produces="text/plain;charset=utf-8")
    @ResponseBody
    public void createFolder(HttpServletResponse response, @RequestParam("path") String path, @RequestParam("name") String name){
    	String createPath = path + File.separator + name;
    	boolean isSuccess = FileTools.createFolder(createPath);
    	if(isSuccess){
    		response.setStatus(200);
    	}else{
    		response.setStatus(500);
    	}
    }
    
    @RequestMapping(value="/deleteFile",produces="text/plain;charset=utf-8")
    @ResponseBody
    public void deleteFile(HttpServletResponse response, @RequestParam("path") String path){
    	boolean isSuccess = FileTools.deleteFile(path);
    	if(isSuccess){
    		response.setStatus(200);
    	}else{
    		response.setStatus(500);
    	}
    }
    
    @RequestMapping(value="/downloadFile",produces="text/plain;charset=utf-8")
    public String judgeDownload(HttpServletResponse response, @RequestParam("path") String physicalPath) throws FileNotFoundException, IOException{
    	physicalPath = URLDecoder.decode(physicalPath, "UTF-8");
    	File file = new File(physicalPath);
    	if(file.exists()){
    		String name = file.getName();
    		if(file.isFile()){
    			download(response, physicalPath, name);
    		}
    		if(file.isDirectory()){
    			packAndDownload(response, physicalPath, name);
    		}
    	}
     	return null;
    }
    
    protected void packAndDownload(HttpServletResponse response, String physicalPath, String name) throws FileNotFoundException, IOException{
    	ZipUtil.zipFileOrFolder("","",physicalPath);
    	download(response, physicalPath + ".zip", name + ".zip");
    }
    
    protected void download(HttpServletResponse response, String physicalPath, String downloadName){
		FileInputStream fis = null;
		ServletOutputStream os = null;
		try {
			fis = new FileInputStream(new File(physicalPath));

			downloadName = new String(downloadName.getBytes("GBK"), "ISO8859_1");
			 
			response.reset();
			response.setCharacterEncoding("UTF-8");
			response.addHeader("Content-Disposition", "attachment;filename=" + downloadName);
			response.setContentType("application/octet-stream");	
			
			os = response.getOutputStream();
			
			byte[] buffer = new byte[1024];
			int n = -1;
			while ((n = fis.read(buffer, 0, buffer.length)) != -1) {
				os.write(buffer, 0, n);
			}

			os.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				fis = null;
			}
			if (os != null) {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				os = null;
			}
		}
	}
    
    @RequestMapping(value="/uploadFile", method = RequestMethod.POST)
    @ResponseBody
	public String uploadFile(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
    	String responseStr="";
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    
        //获取前台传值 
        String[] paths = multipartRequest.getParameterValues("uploadPath");
        String path = "";
        if(paths != null){
        	path = paths[0];
        }
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        String ctxPath = path;
        //创建文件夹  
        File file = new File(ctxPath);    
        if (!file.exists()) {    
            file.mkdirs();    
        }    
        String fileName = null;
        for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
            // 上传文件名    
            MultipartFile mf = entity.getValue();
            fileName = URLDecoder.decode(mf.getOriginalFilename(), "UTF-8");
            
            File uploadFile = new File(ctxPath + File.separator + fileName);    
            try {  
                FileCopyUtils.copy(mf.getBytes(), uploadFile); 
                path =ctxPath+ File.separator + fileName;
                responseStr="上传成功";
        } catch (IOException e) {
            responseStr="上传失败";  
            e.printStackTrace();
        }    
        }   
        System.out.println(responseStr);
        return path; 
	}
}

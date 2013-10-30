package com.webFile.tools;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.webFile.business.object.WebFile;

/**
 * java对象和json互转工具类
 * @author zp
 *
 */
public class JsonTool {

	@Test
	public void test(){
		List<WebFile> listW = new ArrayList<WebFile>();
		File file = new File("D:\\360Downloads\\Software");
		File[] files = file.listFiles();
		for(File f : files){
			listW.add(new WebFile(f));
		}
		String json = objects2Json(listW);
		System.out.println(json);
	}
	
	public static<E> String objects2Json(List<E> es){
		Gson gson = new Gson();
		String json = "";
		json = gson.toJson(es);
		return json;
	}
	
	public static<E> String object2Json(E e){
		Gson gson = new Gson();
		String json = "";
		json = gson.toJson(e);
		return json;
	}
	
	public static<E> E json2Object(String json){
		Gson gson = new Gson();
		E e = gson.fromJson(json, new TypeToken<E>(){}.getType());
		return e;
	}
	
	public static<E> List<E> json2Objects(String json){
		Gson gson = new Gson();
		List<E> es = gson.fromJson(json, new TypeToken<List<E>>(){}.getType());
		return es;
	}
}

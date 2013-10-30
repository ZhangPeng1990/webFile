package com.webFile.baseObject;


public interface BaseEnum<K,T> 
{	
	abstract K getByCode(T t);
}

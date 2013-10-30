package com.webFile.baseObject;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * <strong>Title : AbstractDO<br></strong>
 * <strong>Description : </strong>
 * 基础Data Object 类<br> 
 * <strong>Create on : 2011-11-2<br></strong>
 * @author peng.shi peng.shi@ecointellects.com<br>
 * @version <strong>Argyle Software v1.0.0</strong><br>
 */
public abstract class AbstractDO implements Serializable {
	
	private static final long serialVersionUID = -3942149913171834745L;

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
}

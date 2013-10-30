package com.webFile.baseObject;

import java.util.List;

public interface BaseMapper<T extends AbstractDO, PK extends java.io.Serializable>
{

	PK insert(T model);

	void deleteByPrimaryKey(PK model);

	T selectByPrimaryKey(PK modelPK);

	void updateByPrimaryKey(T model);

	void updateByPrimaryKeySelective(T model);

	int countAll();

	List<T> findAll();

	List<PK> findAllIds();

}

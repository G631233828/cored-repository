package com.inred.media.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;

import com.inred.media.dao.BaseDaoI;
import com.inred.media.model.Pagination;
import com.inred.media.pojo.IdEntity;
import com.inred.media.service.BaseServiceI;
@Service
public class BaseServiceImpl<T extends IdEntity> implements BaseServiceI<T> {
	@Autowired
	protected BaseDaoI<T> baseDaoI;

	
	public T findOneById(String id, Class<T> classes) {
		return baseDaoI.findOneById(id, classes);
	}

	
	public Pagination<T> findPaginationByQuery(Query query, int pageNo,
			int pageSize, Class<T> classes) {
		return baseDaoI.findPaginationByQuery(query, pageNo, pageSize, classes);
	}

	
	public void insert(T t) {
		baseDaoI.insert(t);
	}

	
	public void save(T t) {
		baseDaoI.save(t);
	}

	
	public T findAndModify(Query query, Update update, Class<T> classes) {
		return baseDaoI.findAndModify(query, update, classes);
	}

	
	public T findAndRemove(Query query, Class<T> classes) {
		return baseDaoI.findAndRemove(query, classes);
	}

	
	public void remove(T t) {
		baseDaoI.remove(t);
		
	}

	
	public void updateFirst(Query query, Update update, Class<T> classes) {
		baseDaoI.updateFirst(query, update, classes);
		
	}

	
	public List<T> find(Query query, Class<T> classes) {
		return baseDaoI.find(query, classes);
	}

	
	public T findByIdAndCollectionName(String id, String collectionName,
			Class<T> classes) {
		return baseDaoI.findByIdAndCollectionName(id, collectionName, classes);
	}

	
	public T findOneByQuery(Query query, Class<T> classes) {
		return baseDaoI.findOneByQuery(query, classes);
	}

	
	public void updateAllByQuery(Query query, Update update, Class<T> classes) {
		baseDaoI.updateAllByQuery(query, update, classes);
	}

	
	public Integer findCountByQuery(Query query, Class<T> classes) {
		return baseDaoI.findCountByQuery(query, classes);
	}

	
	public boolean exists(Query query, Class<T> classes) {
		return baseDaoI.exists(query, classes);
	}

}

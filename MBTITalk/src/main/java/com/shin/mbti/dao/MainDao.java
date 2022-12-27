package com.shin.mbti.dao;

import java.sql.SQLClientInfoException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.object.MappingSqlQuery;
import org.springframework.stereotype.Repository;

@Repository("mainDao")
public class MainDao extends CommonDao{
	
	@SuppressWarnings("unchecked")
	public Map selectMainData() {		
		return getSqlSession().selectOne("main.selectMainData");
	}

}

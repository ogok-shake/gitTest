package com.shin.mbti.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shin.mbti.dao.MainDao;

@Service("mainService")
public class MainService {
	
	@Resource(name="mainDao")
	MainDao dao;
	
	public Map selectMainData(){
		
		return dao.selectMainData();
	}

}

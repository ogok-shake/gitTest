package com.shin.mbti.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shin.mbti.service.MainService;

@Controller("mainController")
public class MainController {
	
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@Resource(name="mainService")
	MainService service;
	
	@RequestMapping(value = "/chat/index.do", method = RequestMethod.GET)
	public ModelAndView getMain(HttpServletRequest request, HttpSession session)  throws Exception {
						
		log.info("====== /chat/index.do start ====");
		
		ModelAndView mav = new ModelAndView();
		
		String gameTitle="";
		String subTitle="";
		Map map=new HashMap<String,Object>();
		map = service.selectMainData();
/*
		for (int i=0;i<list.size();i++) { 
			map=list.get(i);
			System.out.println("map.toString :: "+map.toString()); 
		}
*/
		
		mav.addObject("gameTitle", map.get("mainTitle"));
		mav.addObject("subTitle", map.get("subTitle"));
		mav.setViewName("/chat/dialog/main");
		
		return mav;
	}

}

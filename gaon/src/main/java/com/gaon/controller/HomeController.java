package com.gaon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gaon.service.AccountService;
import com.gaon.service.CourseService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;


@Controller
public class HomeController {
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@Autowired
	@Qualifier("courseService")
	private CourseService courseService;
	
	
	
	@RequestMapping(value = {"/","/home.action"}, method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String main(HttpSession session, Model model) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		AccountVO vo = (AccountVO)session.getAttribute("login");
		
		
		//master 통계
		int authcount=0;
		int prop=0;
		int a = accountService.getAcademyCountService();
		List<AccountVO> list = accountService.academyListService();
		for(int i=0;i<list.size();i++) {
			authcount++;
		}
		
		
		if(authcount==0) {
			prop=0;
		}else {
			prop=authcount*100/(a-1);
		}
		model.addAttribute("academycount",a-1);
		model.addAttribute("authacademycount",authcount);
		model.addAttribute("prop",prop);
		//master통계 끝===================================================
		
		
		
		//admin통계
		
		List<AccountVO>	memberlist = accountService.memberListService(vo.getAcademyNo());	
		model.addAttribute("memberlist",memberlist);
		
		
		
		//admin통계 끝==================================================
		
		
		
		
		//teacher통계
			
		List<CourseVO> courseList = courseService.getTeacherCourseListService(vo.getMemberNo());
		
		
		model.addAttribute("courseList",courseList);
		
		
		//teacher통계 끝==================================================
		
		
		return "main";
	}
	
}

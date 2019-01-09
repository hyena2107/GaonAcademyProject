package com.gaon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gaon.service.AdminService;
import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;
@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;

	@RequestMapping(value="gradeList.action",method = RequestMethod.GET)
	public String gradeList(HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		return null;
		
	}
	
	@RequestMapping(value="coursesList.action",method = RequestMethod.GET)
	public String consultList(int academyNo, Model model,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		List<CourseVO> courses = adminService.ConsultList(academyNo);
		model.addAttribute("courses",courses);
		return "consult/consultList";
	}
	
	@RequestMapping(value="studentAttendList.action")
	public String studentList(int studentNo,int courseNo, Model model,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		int attendJan = adminService.attendList(studentNo,courseNo,"2019-01-");
		int attendFeb = adminService.attendList(studentNo,courseNo,"2019-02-");
		int attendMar = adminService.attendList(studentNo,courseNo,"2019-03-");
		int attendApr = adminService.attendList(studentNo,courseNo,"2019-04-");
		int attendMay = adminService.attendList(studentNo,courseNo,"2019-05-");
		int attendJun = adminService.attendList(studentNo,courseNo,"2019-06-");
		int attendJul = adminService.attendList(studentNo,courseNo,"2019-07-");
		int attendAug = adminService.attendList(studentNo,courseNo,"2019-08-");
		int attendSep = adminService.attendList(studentNo,courseNo,"2019-09-");
		int attendOct = adminService.attendList(studentNo,courseNo,"2019-10-");
		int attendNov = adminService.attendList(studentNo,courseNo,"2019-11-");
		int attendDec = adminService.attendList(studentNo,courseNo,"2019-12-");
		
		model.addAttribute("Jan",attendJan);
		model.addAttribute("Feb",attendFeb);
		model.addAttribute("Mar",attendMar);
		model.addAttribute("Apr",attendApr);
		model.addAttribute("May",attendMay);
		model.addAttribute("Jun",attendJun);
		model.addAttribute("Jul",attendJul);
		model.addAttribute("Aug",attendAug);
		model.addAttribute("Sep",attendSep);
		model.addAttribute("Oct",attendOct);
		model.addAttribute("Nov",attendNov);
		model.addAttribute("Dec",attendDec);
		
		
		return "consult/studentAttendList";
	}

	
}

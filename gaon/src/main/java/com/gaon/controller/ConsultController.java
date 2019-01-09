package com.gaon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaon.service.ConsultService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;
@Controller
@RequestMapping("/consult/")
public class ConsultController {
	
	@Autowired
	@Qualifier("consultService")
	private ConsultService consultService;

	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String consultList(@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo,int teacherNo,Model model,HttpSession session ) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		 List<CourseVO> courseList = consultService.consultList(teacherNo);
		 
		 model.addAttribute("CourseList",courseList);
		return "consult/consultList";
	}
	
	@RequestMapping(value="studentList.action",method=RequestMethod.GET)
	public String studentList(int courseNo,Model model, HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<AccountVO> studentList = consultService.studentList(courseNo);
		model.addAttribute("studentList",studentList);
		model.addAttribute("courseNo",courseNo);
		
		return "consult/studentList";
	}
	
	@RequestMapping(value="consultWrite.action",method=RequestMethod.GET)
	public String consultWrite(int teacherNo, int studentNo,int courseNo, Model model,HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		model.addAttribute("studentNo",studentNo);
		model.addAttribute("teacherNo",teacherNo);
		model.addAttribute("courseNo",courseNo);
		return "consult/consultWrite";
	}
	
	@RequestMapping(value="consultWrite2.action",method=RequestMethod.POST)
	public String consultWrite2(Model model,@ModelAttribute("consultWrite")ConsultVo consultVo,HttpSession session,int courseNo,int studentNo, int teacherNo) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		consultVo.setStudentNo(studentNo);
		consultVo.setTeacherNo(teacherNo);
		consultVo.setConsultNo(courseNo);
		consultService.writeConsult(consultVo);
		model.addAttribute("courseNo",courseNo);
		
		return "redirect:/consult/studentList.action";
	}
	
	@RequestMapping(value="viewStudentConsultList.action",method=RequestMethod.GET)
	@ResponseBody
	public String viewStudentConsultList(int studentNo,HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		return "studentNo" ;
	}
	
	@RequestMapping(value="studentConsultList.action",method=RequestMethod.POST)
	public String studentConsultList(int studentNo,String studentName,Model model,HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<ConsultVo> consultList = consultService.viewStudentConsultList(studentNo);
		model.addAttribute("studentConsultList",consultList);
		model.addAttribute("studentName",studentName);
		
		return "consult/studentConsultList";
	}
	
	@RequestMapping(value="studentConsultDetail.action", method=RequestMethod.GET)
	public String studentConsultDetail(int consultNo,String studentName,Model model,HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		ConsultVo consultDetail = consultService.viewStudentConsultDetail(consultNo);
		model.addAttribute("consultDetail", consultDetail);
		model.addAttribute("studentName",studentName);
		
		return "consult/studentConsultDetail";
		
	}
	
}

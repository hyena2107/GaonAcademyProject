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
import com.gaon.service.CourseService;
import com.gaon.service.GradeService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.GradeVo;

@Controller
@RequestMapping("/grade/")
public class GradeController {
	
	@Autowired
	@Qualifier("gradeService")
	private GradeService gradeService;
	@Autowired
	@Qualifier("consultService") 
	private ConsultService consultService;

	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String gradeList(int teacherNo,Model model,HttpSession session ) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		 List<CourseVO> courseList = consultService.consultList(teacherNo);
		 
		 
		 model.addAttribute("courseList",courseList);
		return "grade/gradeList";
	}
	
	@RequestMapping(value="studentList.action",method=RequestMethod.GET)
	public String studentList(int courseNo,Model model, HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<AccountVO> studentList = consultService.studentList(courseNo);
		model.addAttribute("studentList",studentList);
		model.addAttribute("courseNo",courseNo);
		
		return "grade/studentList";
	}
	
	@RequestMapping(value="getstudentlistbox.action")
	public String getstudentListbox(int courseNo,Model model, HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<AccountVO> studentList = consultService.studentList(courseNo);
		model.addAttribute("studentList",studentList);
		model.addAttribute("courseNo",courseNo);
		
		return "grade/studentListbox";
	}
	
	
	
	
	@RequestMapping(value="addgrade.action", method = RequestMethod.POST)
	@ResponseBody
	public String addGrade(int studentNo,int courseNo,String testDate,int grade,String testName,HttpSession session) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		gradeService.addScoreService(studentNo,courseNo,testDate,grade,testName);
		
	return "success";
	
}
	
	@RequestMapping(value="studentgradelist.action")
	public String GradeList(int studentNo,int courseNo,HttpSession session,Model model) {
		
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
	List<GradeVo> list=	gradeService.gradeListService(studentNo,courseNo);
		model.addAttribute("gradelist",list);
	return "grade/studentGradeList";
	}
	
	
	
	


}

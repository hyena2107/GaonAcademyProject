package com.gaon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaon.service.AttendService;
import com.gaon.vo.AttendVo;

@Controller
@RequestMapping("/attend")
public class AttendController {
	
	//출석 뷰 
	@Autowired
	@Qualifier("attendService")
	private AttendService attendService;
	
	

	
	//출석 체크기능
	@RequestMapping(value = {"/checkattend.action"}, method = RequestMethod.GET)
	@ResponseBody
	public String attendcheck(int studentNo, int courseNo, int attendType, String attendDate) {  //String 정의 == return의 형식임
		
		attendService.attendCheckService(studentNo, courseNo, attendType, attendDate);
		
		return "성공!";
	}

/*	// 담당 강의의 학생리스트
	@RequestMapping(value = {"/checkstudent.action"}, method= RequestMethod.GET)
	public String studentList(int courseNo, Model model) {
		
		List<StudentVo> enrolllist = studentService.enrollListService(courseNo);
		
		model.addAttribute("student", enrolllist);
		
		return "student/checkstudent";
		
	}*/
	
	
	
}
package com.gaon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaon.service.CourseService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;

@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	@Qualifier("courseService")
	private CourseService courseService;

	@RequestMapping(value = "addcourse.action", method = RequestMethod.GET)
	public String addCourseView(HttpSession session,int academyNo,Model model) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		List<AccountVO> teacherlist = courseService.getTeacherListService(academyNo);
		model.addAttribute("teacherList", teacherlist);
		return "course/addcourse";
	}

	@RequestMapping(value = "courselist.action", method = RequestMethod.GET)
	public String courseListView(HttpSession session, Model model,  int teacherNo,int academyNo) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		
		List<CourseVO> courselist;
		if(teacherNo==0) {
			courselist = courseService.getAcademyCourseListService(academyNo);
		
		}else {
			courselist = courseService.getTeacherCourseListService(teacherNo);
		}
		
		
		
		model.addAttribute("courseList", courselist);

		return "course/courselist";
	}

	@RequestMapping(value = "addcourse.action", method = RequestMethod.POST)
	public String addCourse(CourseVO vo, HttpSession session) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		courseService.addCourseService(vo);
		return "redirect:courselist.action?academyNo=" + vo.getAcademyNo()+"&teacherNo=0";
	}

	@RequestMapping(value = "teacherlist.action")
	public String getTeacherList(Model model, int academyNo, HttpSession session) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		List<AccountVO> teacherlist = courseService.getTeacherListService(academyNo);
		model.addAttribute("teacherList", teacherlist);
		return "course/teacherlist";
	}

	@RequestMapping(value = "deletecourse.action")
	@ResponseBody
	public String deleteCourse(int courseNo) {
		courseService.deleteCourseService(courseNo);
		return "";
	}

	@RequestMapping(value = "getcourselist.action")
	public String getCourseList(Model model, HttpSession session, int academyNo) {
		List<CourseVO> courselist = courseService.getAcademyCourseListService(academyNo);
		model.addAttribute("courseList", courselist);

		return "course/coursebox";
	}

	@RequestMapping(value = "getstudentlist.action")
	public String getstudentList(Model model, HttpSession session, int academyNo, int courseNo) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		List<AccountVO> enroll = courseService.getEnrollService(academyNo,courseNo);
				
		model.addAttribute("enroll",enroll);
		model.addAttribute("academyNo", academyNo);
		model.addAttribute("courseNo", courseNo);
		return "course/enrolllist";
	}
	
	@RequestMapping(value = "getstudentlistbox.action")
	public String getstudentListBox(Model model, HttpSession session, int academyNo, int courseNo) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		List<AccountVO> studentlist = courseService.getStudentListService(academyNo,courseNo);
		
		model.addAttribute("studentList", studentlist);		
		model.addAttribute("courseNo", courseNo);
		return "course/studentlistbox";
	}
	
	@RequestMapping(value = "getenrolllistbox.action")
	public String getenrollListBox(Model model, HttpSession session, int academyNo, int courseNo) {
		if (session.getAttribute("login") == null) {
			return "redirect:/home.action";
		}
		List<AccountVO> enroll = courseService.getEnrollService(academyNo,courseNo);
				
		model.addAttribute("enroll",enroll);
		model.addAttribute("academyNo", academyNo);
		model.addAttribute("courseNo", courseNo);
		return "course/enrolllistbox";
	}
	
	@RequestMapping(value = "addstudents.action")
	@ResponseBody
	public String addStudent(int studentNo,int courseNo,String startDate) {
		courseService.addStudentService(studentNo, courseNo, startDate);

		return "success";
	}
	
	@RequestMapping(value = "deletestudents.action")
	@ResponseBody
	public String deleteStudent(int studentNo,int courseNo,String endDate) {
		courseService.deleteStudentService(studentNo, courseNo, endDate);

		return "success";
	}

}

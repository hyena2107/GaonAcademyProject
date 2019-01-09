package com.gaon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.gaon.dao.AdminDao;
import com.gaon.dao.ConsultDao;
import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	@Qualifier("adminDao")
	private AdminDao adminDao;

	@Override
	public List<CourseVO> ConsultList(int academyNo) {
		List<CourseVO> courses = adminDao.selectConsultList(academyNo);
		return courses;
	}

	@Override
	public int attendList(int studentNo, int courseNo,String string) {
		
		int average = adminDao.selectAttendList(studentNo, courseNo, string);
		return average;
	}
	
		


}

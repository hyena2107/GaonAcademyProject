package com.gaon.service;

import java.util.List;

import com.gaon.common.Util;
import com.gaon.dao.StudentDao;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

public  class StudentServiceImpl implements StudentService{
	
	//메소드 패키지를 사용하기 위해 선언해줌.
	private StudentDao studentDao;

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	@Override
	public void studentRegisterService(StudentVo vo){
		String password = Util.getHashedString(vo.getPassword(), "SHA-256" );
		vo.setPassword(password);
		studentDao.studentRegisterDao(vo);

	} 
	

	

	@Override
	public StudentVo studentLoginService(StudentVo vo) {
		String password = Util.getHashedString(vo.getPassword(), "SHA-256");
		vo.setPassword(password);
		StudentVo student = studentDao.studentLoginDao(vo);
		
		return student;
	}

	//강의목록 서비스 생성   service->Dao->Mapper 
	@Override
	public List<CourseVO> courseListService(String teacherName) {
		
		List<CourseVO> courselist = studentDao.courseListDao(teacherName);
		return courselist;
	}
	
	
	//수강학생 서비스생성
	@Override
	public List<StudentVo> enrollListService(int courseNo) {
		
		List<StudentVo> enrolllist = studentDao.enrollListDao(courseNo);
		
		return enrolllist;
		
	}

	
	
}
package com.gaon.dao;

import java.util.List;

import com.gaon.mapper.StudentMapper;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

public class StudentDaoImpl implements StudentDao{
							// 상속과 비슷한개념.  상속 = 클래스하나, implements= 다수클래스
	private StudentMapper studentMapper;
	
	public void setStudentMapper(StudentMapper studentMapper) {
		this.studentMapper = studentMapper;
	}

	@Override 
	public void studentRegisterDao(StudentVo vo) {
		studentMapper.StudentRegister(vo);
	}
	
	 	
	
	@Override
	public StudentVo studentLoginDao(StudentVo vo) {
		StudentVo student = studentMapper.StudentLogin(vo);
		return student;
	}

	
	
	//교사 담당과목
	@Override
	public List<CourseVO> courseListDao(String teacherName) {

		
		List<CourseVO> courselist = studentMapper.courseListMapper(teacherName);
		
		return courselist;
	}

	
	//수강신청학생 
	@Override
	public List<StudentVo> enrollListDao(int courseNo) {
		
		List<StudentVo> enrolllist = studentMapper.enrollListMapper(courseNo);
		
		return enrolllist;
		
	}

	@Override
	public List<StudentVo> studentListDao() {
		// TODO Auto-generated method stub
		return null;
	}
	

}

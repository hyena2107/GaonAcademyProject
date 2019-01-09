package com.gaon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.dao.CourseDao;
import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;

@Repository("courseService")
public class CourseServiceImpl implements CourseService{

	@Autowired
	@Qualifier("courseDao")
	private CourseDao courseDao;
	
	@Override
	public void addCourseService(CourseVO vo) {
		courseDao.addCourseDao(vo);		
	}

	@Override
	public List<AccountVO> getTeacherListService(int academyNo) {
		List<AccountVO>  list = courseDao.getTeacherListDao(academyNo);
		return list;
	}

	@Override
	public List<CourseVO> getTeacherCourseListService(int teacherNo) {
		List<CourseVO>  list = courseDao.getTeacherCourseListDao(teacherNo);
		return list;
	}
	
	@Override
	public List<CourseVO> getAcademyCourseListService(int academyNo) {
		List<CourseVO>  list = courseDao.getAcademyCourseListDao(academyNo);
		return list;
	}

	@Override
	public void deleteCourseService(int courseNo) {
		courseDao.deleteCourseDao(courseNo);	
		
	}

	@Override
	public List<AccountVO> getStudentListService(int academyNo, int courseNo) {
		 List<AccountVO> list = courseDao.getStudentListDao(academyNo,courseNo);
		return list;
	}

	@Override
	public void addStudentService(int studentNo, int courseNo, String startDate) {
		courseDao.addStudentDao(studentNo, courseNo, startDate);
		
	}

	@Override
	public List<AccountVO> getEnrollService(int academyNo, int courseNo) {
		List<AccountVO> list = courseDao.getEnrollDao(academyNo,courseNo);
		return list;
	}

	@Override
	public void deleteStudentService(int studentNo, int courseNo, String endDate) {
		courseDao.deleteStudentDao(studentNo,  courseNo, endDate);
		
	}

}

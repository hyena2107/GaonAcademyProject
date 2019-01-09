package com.gaon.service;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;

public interface CourseService {

	void addCourseService(CourseVO vo);

	List<AccountVO> getTeacherListService(int academyNo);


	void deleteCourseService(int courseNo);

	List<AccountVO> getStudentListService(int academyNo, int courseNo);	

	List<AccountVO> getEnrollService(int courseNo, int academyNo);

	List<CourseVO> getAcademyCourseListService(int academyNo);
	List<CourseVO> getTeacherCourseListService(int teacherNo);

	void deleteStudentService(int studentNo, int courseNo, String endDate);

	void addStudentService(int studentNo, int courseNo, String startDate);

}

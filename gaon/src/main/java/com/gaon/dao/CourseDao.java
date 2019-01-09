package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;

public interface CourseDao {

	void addCourseDao(CourseVO vo);

	List<AccountVO> getTeacherListDao(int academyNo);


	void deleteCourseDao(int courseNo);

	List<AccountVO> getStudentListDao(int academyNo, int courseNo);

	List<AccountVO> getEnrollDao(int academyNo, int courseNo);

	List<CourseVO> getTeacherCourseListDao(int teacherNo);

	List<CourseVO> getAcademyCourseListDao(int academyNo);

	void deleteStudentDao(int studentNo, int courseNo, String endDate);

	void addStudentDao(int studentNo, int courseNo, String startDate);

}

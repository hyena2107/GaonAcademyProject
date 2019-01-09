package com.gaon.mapper;

import java.util.HashMap;
import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;

public interface CourseMapper {

	void addCourse(CourseVO vo);

	List<AccountVO> getTeacherList(int academyNo);


	void deleteCourse(int courseNo);

	

	List<AccountVO> getEnroll(HashMap<String,Object> params);

	List<AccountVO> getStudentList(HashMap<String,Object> params);

	List<CourseVO> getTeacherCourseList(int teacherNo);

	List<CourseVO> getAcademyCourseList(int academyNo);

	void addStudent(HashMap<String, Object> params);
	
	void deleteStudent(HashMap<String, Object> params);

}

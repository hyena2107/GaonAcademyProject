package com.gaon.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.mapper.CourseMapper;
import com.gaon.vo.AccountVO;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;

@Repository("courseDao")
public class CourseDaoImpl implements CourseDao{

	@Autowired
	@Qualifier("courseMapper")
	private CourseMapper courseMapper;
	
	@Override
	public void addCourseDao(CourseVO vo) {
		courseMapper.addCourse(vo);
	}

	@Override
	public List<AccountVO> getTeacherListDao(int academyNo) {
		List<AccountVO> list = courseMapper.getTeacherList(academyNo);
		return list;
	}

	@Override
	public List<CourseVO> getTeacherCourseListDao(int teacherNo) {
		List<CourseVO> list = courseMapper.getTeacherCourseList(teacherNo);
		return list;
	}
	
	@Override
	public List<CourseVO> getAcademyCourseListDao(int academyNo) {
		List<CourseVO> list = courseMapper.getAcademyCourseList(academyNo);
		return list;
	}

	@Override
	public void deleteCourseDao(int courseNo) {
		courseMapper.deleteCourse(courseNo);
		
	}

	@Override
	public List<AccountVO> getStudentListDao(int academyNo, int courseNo) {
		
		HashMap<String,Object> params = new HashMap<>();
		params.put("academyNo",academyNo);
		params.put("courseNo",courseNo);
		
		List<AccountVO> list = courseMapper.getStudentList(params);
		return list;
	}

	@Override
	public void addStudentDao(int studentNo, int courseNo, String startDate) {
		
		HashMap<String,Object> params = new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("courseNo",courseNo);
		params.put("startDate",startDate);
			courseMapper.addStudent(params);
		
		
	}

	@Override
	public List<AccountVO> getEnrollDao(int academyNo,int courseNo) {
		
		HashMap<String,Object> params = new HashMap<>();
		params.put("courseNo",courseNo);
		params.put("academyNo",academyNo);
		
		
		List<AccountVO> list = courseMapper.getEnroll(params);
		return list;
	}

	@Override
	public void deleteStudentDao(int studentNo, int courseNo, String endDate) {
		HashMap<String,Object> params = new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("courseNo",courseNo);
		params.put("endDate",endDate);
		courseMapper.deleteStudent(params);
		
	}
	

}

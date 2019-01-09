package com.gaon.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.mapper.GradeMapper;
import com.gaon.vo.AccountVO;
import com.gaon.vo.GradeVo;
import com.gaon.vo.CourseVO;

@Repository("gradeDao")
public class GradeDaoImpl implements GradeDao {
	
	@Autowired
	@Qualifier("gradeMapper")
	private GradeMapper gradeMapper;
	private List<GradeVo> gradeList;

	@Override
	public List<CourseVO> selectCourseList(int teacherNo) {
		
		List<CourseVO> courseList= gradeMapper.courseList(teacherNo);
		
		return courseList;
	}

	@Override
	public List<AccountVO> selectstudentList(int courseNo) {
		
		List<AccountVO> studentList=gradeMapper.studentList(courseNo);
		
		return studentList;
	}

	@Override
	public void insertgradeWrite(GradeVo gradeVo) {

		gradeMapper.insertgradeWrite(gradeVo);
		
	}

	@Override
	public List<GradeVo> selectStudentGradeList(int enrollNo) {
		List<GradeVo> gradeList = gradeMapper.selectStudentGradeList(enrollNo);
		return gradeList;
	}

	
	@Override
	public GradeVo selectGradeDetail(int gradeNo) {
		
		GradeVo gradeDetail = gradeMapper.selectGradeDetail(gradeNo);
		return gradeDetail;
	}

	
	

	@Override
	public List<GradeVo> addScoreList(int gradeNo) {
		List<GradeVo> gradeList = gradeMapper.selectStudentGradeList(gradeNo);
		return gradeList;
	}

	@Override
	public List<GradeVo> addScore(int enrollNo) {
		gradeMapper.addScore(enrollNo);
		return gradeList;
	}

	@Override
	public void addGradeDao(int studentNo, int courseNo, String testDate, int grade, String testName) {
		HashMap<String,Object>params = new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("courseNo",courseNo);
		params.put("testDate",testDate);
		params.put("grade",grade);
		params.put("testName",testName);
		gradeMapper.addGrade(params);
		
	}

	@Override
	public List<GradeVo> gradeListDao(int studentNo, int courseNo) {
		
		HashMap<String,Object> params = new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("courseNo",courseNo);
		
		List<GradeVo> list =gradeMapper.gradelist(params); 
		return list;
	}

}

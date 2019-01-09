package com.gaon.mapper;

import java.util.HashMap;
import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.GradeVo;
import com.gaon.vo.CourseVO;

public interface GradeMapper {
	
	List<CourseVO> courseList(int teacherNo);
	List<AccountVO> studentList(int courseNo);
	void insertgradeWrite(GradeVo gradeVo);
	List<GradeVo> selectStudentGradeList(int enrollNo);
	GradeVo selectGradeDetail(int gradeNo);
	void addGrade(HashMap<String, Object> params);
	void addScore(int enrollNo);
	
}

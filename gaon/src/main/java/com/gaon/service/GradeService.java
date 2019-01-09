package com.gaon.service;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.GradeVo;
import com.gaon.vo.CourseVO;

public interface GradeService {

	List<CourseVO> gradeList(int teacherNo);

	List<AccountVO> studentList(int courseNo);

	void writeGrade(GradeVo gradeVo);

	List<GradeVo> viewStudentGradeList(int enrollNo);	
	
	List<GradeVo> viewScoreList(int enrollNo);

	GradeVo viewStudentGradeDetail(int gradeNo);

	void addScoreService(int studentNo, int courseNo, String testDate, int grade, String testName);

	List<GradeVo> gradeListService(int studentNo, int courseNo);
	
	

}

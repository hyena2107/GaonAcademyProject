package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.GradeVo;
import com.gaon.vo.CourseVO;

public interface GradeDao {

	List<CourseVO> selectCourseList(int teacherNo);

	List<AccountVO> selectstudentList(int courseNo);

	void insertgradeWrite(GradeVo gradeVo);

	List<GradeVo> selectStudentGradeList(int enrollNo);

	GradeVo selectGradeDetail(int gradeNo);


	List<GradeVo> addScoreList(int gradeNo);
	
	List<GradeVo> addScore(int gradeNo);

	void addGradeDao(int studentNo, int courseNo, String testDate, int grade, String testName);

}

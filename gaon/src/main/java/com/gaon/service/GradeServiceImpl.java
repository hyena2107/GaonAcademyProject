package com.gaon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gaon.dao.GradeDao;
import com.gaon.vo.AccountVO;
import com.gaon.vo.GradeVo;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

@Service("gradeService")
public class GradeServiceImpl implements GradeService {
	
	@Autowired
	@Qualifier("gradeDao")
	private GradeDao gradeDao;
	
	@Override
	public List<CourseVO> gradeList(int teacherNo){
		
		List<CourseVO> gradeList = gradeDao.selectCourseList(teacherNo);
		
		return gradeList;
		
	}

	@Override
	public List<AccountVO> studentList(int courseNo) {
		List<AccountVO> studentList=gradeDao.selectstudentList(courseNo);
		
		return studentList;
	}

	@Override
	public void writeGrade(GradeVo gradeVo) {
		gradeDao.insertgradeWrite(gradeVo);
		
	}

	@Override
	public List<GradeVo> viewStudentGradeList(int enrollNo) {
		
		List<GradeVo> gradeList = gradeDao.selectStudentGradeList(enrollNo);
		return gradeList;
	}

	@Override
	public GradeVo viewStudentGradeDetail(int gradeNo) {
		
		GradeVo gradeDetail = gradeDao.selectGradeDetail(gradeNo);
		return gradeDetail;
	}

	@Override
	public List<GradeVo> viewScoreList(int enrollNo) {
		
		List<GradeVo> gradeListAll = gradeDao.selectStudentGradeList(enrollNo);
		return gradeListAll;
	}


	@Override
	public void addScoreService(int studentNo, int courseNo, String testDate, int grade, String testName) {
		gradeDao.addGradeDao(studentNo,  courseNo,  testDate,  grade,  testName);
		
	}

	@Override
	public List<GradeVo> gradeListService(int studentNo, int courseNo) {
		List<GradeVo> list = gradeDao.gradeListDao(studentNo, courseNo);
		return list;
	}

	
}

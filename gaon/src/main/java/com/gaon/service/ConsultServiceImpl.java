package com.gaon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gaon.dao.ConsultDao;
import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

@Service("consultService")
public class ConsultServiceImpl implements ConsultService {
	
	@Autowired
	@Qualifier("consultDao")
	private ConsultDao consultDao;
	
	@Override
	public List<CourseVO> consultList(int teacherNo){
		
		List<CourseVO> consultList = consultDao.selectCourseList(teacherNo);
		
		return consultList;
		
	}

	@Override
	public List<AccountVO> studentList(int courseNo) {
		List<AccountVO> studentList=consultDao.selectstudentList(courseNo);
		
		return studentList;
	}

	@Override
	public void writeConsult(ConsultVo consultVo) {
		consultDao.insertconsultWrite(consultVo);
		
	}

	@Override
	public List<ConsultVo> viewStudentConsultList(int studentNo) {
		
		List<ConsultVo> consultList = consultDao.selectStudentConsultList(studentNo);
		return consultList;
	}

	@Override
	public ConsultVo viewStudentConsultDetail(int consultNo) {
		
		ConsultVo consultDetail = consultDao.selectConsultDetail(consultNo);
		return consultDetail;
	}

}

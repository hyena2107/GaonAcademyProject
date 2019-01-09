package com.gaon.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.mapper.ConsultMapper;
import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;

@Repository("consultDao")
public class ConsultDaoImpl implements ConsultDao {
	
	@Autowired
	@Qualifier("consultMapper")
	private ConsultMapper consultMapper;

	@Override
	public List<CourseVO> selectCourseList(int teacherNo) {
		
		List<CourseVO> courseList= consultMapper.courseList(teacherNo);
		
		return courseList;
	}

	@Override
	public List<AccountVO> selectstudentList(int courseNo) {
		
		List<AccountVO> studentList=consultMapper.studentList(courseNo);
		
		return studentList;
	}

	@Override
	public void insertconsultWrite(ConsultVo consultVo) {

		consultMapper.insertconsultWrite(consultVo);
		
	}

	@Override
	public List<ConsultVo> selectStudentConsultList(int studentNo) {
		List<ConsultVo> consultList = consultMapper.selectStudentConsultList(studentNo);
		return consultList;
	}

	@Override
	public ConsultVo selectConsultDetail(int consultNo) {
		
		ConsultVo consultDetail = consultMapper.selectConsultDetail(consultNo);
		return consultDetail;
	}

}

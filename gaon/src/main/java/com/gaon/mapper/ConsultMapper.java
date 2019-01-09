package com.gaon.mapper;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;

public interface ConsultMapper {
	
	List<CourseVO> courseList(int teacherNo);
	List<AccountVO> studentList(int courseNo);
	void insertconsultWrite(ConsultVo consultVo);
	List<ConsultVo> selectStudentConsultList(int studentNo);
	ConsultVo selectConsultDetail(int consultNo);

}

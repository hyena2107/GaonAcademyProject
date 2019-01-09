package com.gaon.service;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;

public interface ConsultService {

	List<CourseVO> consultList(int teacherNo);

	List<AccountVO> studentList(int courseNo);

	void writeConsult(ConsultVo consultVo);

	List<ConsultVo> viewStudentConsultList(int studentNo);

	ConsultVo viewStudentConsultDetail(int consultNo);

}
